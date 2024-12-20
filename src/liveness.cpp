/**
 * Liveness Analysis is a fundamental dataflow analysis technique used in compiler
 * optimization, particularly for register allocation and dead code elimination.
 * It determines whether a variable (often represented as a temporary register or
 * a memory location) is "live" at a certain point in the program.
 *
 * Def: What is a "live" variable?
 * A variable is considered live at a particular point if its current value will
 * be read in the future before it is overwritten. Conversely, if a variable's
 * current value is not used again, it is dead.
 *
 * Key Concepts:
 *      Basic Blocks: A sequence of consecutive statements in which flow of control enters at the beginning and exits at the end without halt or possibility of branching except at the end.
 *      Dataflow Equations:
 *          IN[B]: Set of variables live at the entry of block B.
 *          OUT[B]: Set of variables live at the exit of block B.
 *          USE[B]: Variables used in block B before any assignment.
 *          DEF[B]: Variables assigned a value in block B.
 */

#include "liveness.h"
#include <unordered_map>
#include <unordered_set>
#include "graph.hpp"
#include "llvm_ir.h"
#include "temp.h"

using namespace std;
using namespace LLVMIR;
using namespace GRAPH;

struct inOut
{
    TempSet_ in;
    TempSet_ out;
};

struct useDef
{
    TempSet_ use;
    TempSet_ def;
};

static unordered_map<GRAPH::Node<LLVMIR::L_block *> *, inOut> InOutTable;
static unordered_map<GRAPH::Node<LLVMIR::L_block *> *, useDef> UseDefTable;

/**
 * Extracts all operands involved, categorizing them based on the type of statement.
 *
 * This gives us an example of how the rest of the functions might be implemented,
 * so it is good to use it a an reference.
 */
list<AS_operand **> get_all_AS_operand(L_stm *stm)
{
    list<AS_operand **> AS_operand_list;
    switch (stm->type)
    {
    case L_StmKind::T_BINOP:
    {
        AS_operand_list.push_back(&(stm->u.BINOP->left));
        AS_operand_list.push_back(&(stm->u.BINOP->right));
        AS_operand_list.push_back(&(stm->u.BINOP->dst));
    }
    break;
    case L_StmKind::T_LOAD:
    {
        AS_operand_list.push_back(&(stm->u.LOAD->dst));
        AS_operand_list.push_back(&(stm->u.LOAD->ptr));
    }
    break;
    case L_StmKind::T_STORE:
    {
        AS_operand_list.push_back(&(stm->u.STORE->src));
        AS_operand_list.push_back(&(stm->u.STORE->ptr));
    }
    break;
    case L_StmKind::T_LABEL:
    {
    }
    break;
    case L_StmKind::T_JUMP:
    {
    }
    break;
    case L_StmKind::T_CMP:
    {
        AS_operand_list.push_back(&(stm->u.CMP->left));
        AS_operand_list.push_back(&(stm->u.CMP->right));
        AS_operand_list.push_back(&(stm->u.CMP->dst));
    }
    break;
    case L_StmKind::T_CJUMP:
    {
        AS_operand_list.push_back(&(stm->u.CJUMP->dst));
    }
    break;
    case L_StmKind::T_MOVE:
    {
        AS_operand_list.push_back(&(stm->u.MOVE->src));
        AS_operand_list.push_back(&(stm->u.MOVE->dst));
    }
    break;
    case L_StmKind::T_CALL:
    {
        AS_operand_list.push_back(&(stm->u.CALL->res));
        for (auto &arg : stm->u.CALL->args)
        {
            AS_operand_list.push_back(&arg);
        }
    }
    break;
    case L_StmKind::T_VOID_CALL:
    {
        for (auto &arg : stm->u.VOID_CALL->args)
        {
            AS_operand_list.push_back(&arg);
        }
    }
    break;
    case L_StmKind::T_RETURN:
    {
        if (stm->u.RETURN->ret != nullptr)
            AS_operand_list.push_back(&(stm->u.RETURN->ret));
    }
    break;
    case L_StmKind::T_PHI:
    {
        AS_operand_list.push_back(&(stm->u.PHI->dst));
        for (auto &phi : stm->u.PHI->phis)
        {
            AS_operand_list.push_back(&(phi.first));
        }
    }
    break;
    case L_StmKind::T_ALLOCA:
    {
        AS_operand_list.push_back(&(stm->u.ALLOCA->dst));
    }
    break;
    case L_StmKind::T_GEP:
    {
        AS_operand_list.push_back(&(stm->u.GEP->new_ptr));
        AS_operand_list.push_back(&(stm->u.GEP->base_ptr));
        AS_operand_list.push_back(&(stm->u.GEP->index));
    }
    break;
    default:
    {
        printf("%d\n", (int)stm->type);
        assert(0);
    }
    }
    return AS_operand_list;
}

/**
 * Intended to extract operands that are defined (def) and used (use) in a statement.
 */
std::list<AS_operand **> get_def_operand(L_stm *stm)
{
    // TODO

    // enum class L_StmKind
    // {
    //     T_BINOP, T_LOAD, T_STORE, T_LABEL,T_JUMP, T_CMP, T_CJUMP, T_MOVE, T_CALL, T_VOID_CALL, T_RETURN, T_PHI, T_NULL, T_ALLOCA, T_GEP
    // };
    // struct L_stm
    // {
    //     L_StmKind type;
    //     union {
    //         L_binop *BINOP;
    //         L_load *LOAD;
    //         L_store *STORE;
    //         L_label *LABEL;
    //         L_jump *JUMP;
    //         L_cmp *CMP;
    //         L_cjump *CJUMP;
    //         L_move *MOVE;
    //         L_call *CALL;
    //         L_voidcall *VOID_CALL;
    //         L_ret *RETURN;
    //         L_phi *PHI;
    //         L_alloca *ALLOCA;
    //         L_gep *GEP;
    //     } u;
    // };

    list<AS_operand **> AS_operand_list;
    switch (stm->type)
    {
    case L_StmKind::T_BINOP:
    {
        AS_operand_list.push_back(
            &(stm->u.BINOP->dst));
        break;
    }
    case L_StmKind::T_LOAD:
    {
        AS_operand_list.push_back(&(stm->u.LOAD->dst));
        break;
    }

    case L_StmKind::T_STORE:
    {
        break;
    }
    case L_StmKind::T_LABEL:
    {
        break;
    }

    case L_StmKind::T_JUMP:
    {
        break;
    }
    case L_StmKind::T_CMP:
    {
        AS_operand_list.push_back(&(stm->u.CMP->dst));
        break;
    }
    case L_StmKind::T_CJUMP:
    {
        break;
    }
    case L_StmKind::T_MOVE:
    {
        AS_operand_list.push_back(&(stm->u.MOVE->dst));
        break;
    }
    case L_StmKind::T_CALL:
    {
        AS_operand_list.push_back(&(stm->u.CALL->res));
        break;
    }

    case L_StmKind::T_VOID_CALL:
    {
        break;
    }
    case L_StmKind::T_RETURN:
    {
        break;
    }
    case L_StmKind::T_PHI:
    {
        AS_operand_list.push_back(&(stm->u.PHI->dst));
        break;
    }

    case L_StmKind::T_ALLOCA:
    {
        AS_operand_list.push_back(&(stm->u.ALLOCA->dst));
        break;
    }
    case L_StmKind::T_GEP:
    {
        AS_operand_list.push_back(&(stm->u.GEP->new_ptr));
        break;
    }
    default:
    {
        // This is not supposed to happen!
        printf("%d\n", (int)stm->type);
        assert(0);
    }
    }
    return AS_operand_list;
}

list<Temp_temp *> get_def(L_stm *stm)
{
    auto AS_operand_list = get_def_operand(stm);
    list<Temp_temp *> Temp_list;
    for (auto AS_op : AS_operand_list)
    {
        Temp_list.push_back((*AS_op)->u.TEMP);
    }
    return Temp_list;
}

/**
 * Intended to extract operands that are defined (def) and used (use) in a statement.
 */
std::list<AS_operand **> get_use_operand(L_stm *stm)
{
    list<AS_operand **> AS_operand_list;
    switch (stm->type)
    {
    case L_StmKind::T_BINOP:
    {
        AS_operand_list.push_back(&(stm->u.BINOP->left));
        AS_operand_list.push_back(&(stm->u.BINOP->right));
        break;
    }
    case L_StmKind::T_LOAD:
    {
        AS_operand_list.push_back(&(stm->u.LOAD->ptr));
        break;
    }
    case L_StmKind::T_STORE:
    {
        AS_operand_list.push_back(&(stm->u.STORE->src));
        AS_operand_list.push_back(&(stm->u.STORE->ptr));
        break;
    }
    case L_StmKind::T_LABEL:
    {
        break;
    }
    case L_StmKind::T_JUMP:
    {
        break;
    }
    case L_StmKind::T_CMP:
    {
        AS_operand_list.push_back(&(stm->u.CMP->left));
        AS_operand_list.push_back(&(stm->u.CMP->right));
        break;
    }

    case L_StmKind::T_CJUMP:
    {
        AS_operand_list.push_back(&(stm->u.CJUMP->dst));
        break;
    }
    case L_StmKind::T_MOVE:
    {
        AS_operand_list.push_back(&(stm->u.MOVE->src));
        break;
    }
    case L_StmKind::T_CALL:
    {
        for (auto &arg : stm->u.CALL->args)
        {
            AS_operand_list.push_back(&arg);
        }
        break;
    }
    case L_StmKind::T_VOID_CALL:
    {
        for (auto &arg : stm->u.VOID_CALL->args)
        {
            AS_operand_list.push_back(&arg);
        }
        break;
    }
    case L_StmKind::T_RETURN:
    {
        if (stm->u.RETURN->ret != nullptr)
            AS_operand_list.push_back(&(stm->u.RETURN->ret));
        break;
    }
    case L_StmKind::T_PHI:
    {
        for (auto &phi : stm->u.PHI->phis)
        {
            AS_operand_list.push_back(&(phi.first));
        }
        break;
    }
    case L_StmKind::T_ALLOCA:
    {
        break;
    }
    case L_StmKind::T_GEP:
    {
        AS_operand_list.push_back(&(stm->u.GEP->base_ptr));
        AS_operand_list.push_back(&(stm->u.GEP->index));
        break;
    }
    default:
    {
        // This is not supposed to happen!
        printf("%d\n", (int)stm->type);
        assert(0);
    }
    }
    return AS_operand_list;
}

list<Temp_temp *> get_use(L_stm *stm)
{
    auto AS_operand_list = get_use_operand(stm);
    list<Temp_temp *> Temp_list;
    for (auto AS_op : AS_operand_list)
    {
        Temp_list.push_back((*AS_op)->u.TEMP);
    }
    return Temp_list;
}

static void init_INOUT()
{
    InOutTable.clear();
    UseDefTable.clear();
}

TempSet_ &FG_Out(GRAPH::Node<LLVMIR::L_block *> *r)
{
    return InOutTable[r].out;
}
TempSet_ &FG_In(GRAPH::Node<LLVMIR::L_block *> *r)
{
    return InOutTable[r].in;
}
TempSet_ &FG_def(GRAPH::Node<LLVMIR::L_block *> *r)
{
    return UseDefTable[r].def;
}
TempSet_ &FG_use(GRAPH::Node<LLVMIR::L_block *> *r)
{
    return UseDefTable[r].use;
}

static void Use_def(GRAPH::Node<LLVMIR::L_block *> *r, GRAPH::Graph<LLVMIR::L_block *> &bg, std::vector<Temp_temp *> &args)
{
    //    Todo
    for (auto arg : args)
    {
        FG_use(r).insert(arg);
    }
    for (auto block_node : bg.mynodes)
    {
        TempSet_ def_now;
        auto block = block_node.second;
        auto def = FG_def(block);
        auto use = FG_use(block);
        for (auto stm : block->info->instrs)
        {
            auto use_operand = get_use_operand(stm);
            for (auto AS_op : use_operand)
            {
                if ((*AS_op)->kind == OperandKind::TEMP && def_now.find((*AS_op)->u.TEMP) == def_now.end())
                {
                    use.insert((*AS_op)->u.TEMP);
                }
            }

            auto def_operand = get_def_operand(stm);
            for (auto AS_op : def_operand)
            {
                if ((*AS_op)->kind == OperandKind::TEMP)
                {
                    def.insert((*AS_op)->u.TEMP);
                    def_now.insert((*AS_op)->u.TEMP);
                }
            }
        }
        UseDefTable[block].def = def;
        UseDefTable[block].use = use;
    }
}

/**
 * Performs a single iteration of the liveness analysis algorithm. It updates
 * the in and out sets for each basic block based on the liveness information
 * of its successors until no more changes occur.
 */
static int gi = 0;
static bool LivenessIteration(GRAPH::Node<LLVMIR::L_block *> *r, GRAPH::Graph<LLVMIR::L_block *> &bg)
{
    //    Todo

    gi++;
    bool changed = false;
    for (auto block_node : bg.mynodes)
    {
        auto block = block_node.second;
        auto in = FG_In(block);
        auto out = FG_Out(block);
        auto def = FG_def(block);
        auto use = FG_use(block);
        TempSet_ new_in;
        TempSet_ new_out;
        for (auto succ : block->succs)
        {
            auto succ_node = bg.mynodes[succ];
            new_out = *TempSet_union(&new_out, &FG_In(succ_node));
        }
        new_in = *TempSet_union(&use, TempSet_diff(&new_out, &def));
        if (!TempSet_eq(&new_in, &in))
        {
            changed = true;
            in = new_in;
            InOutTable[block].in = in;
        }
        if (!TempSet_eq(&new_out, &out))
        {
            changed = true;
            out = new_out;
            InOutTable[block].out = out;
        }
    }
    return changed;
}

void PrintTemps(FILE *out, TempSet set)
{
    for (auto x : *set)
    {
        printf("%d  ", x->num);
    }
}

void Show_Liveness(FILE *out, GRAPH::Graph<LLVMIR::L_block *> &bg)
{
    fprintf(out, "\n\nNumber of iterations=%d\n\n", gi);
    for (auto block_node : bg.mynodes)
    {
        fprintf(out, "----------------------\n");
        printf("block %s \n", block_node.second->info->label->name.c_str());
        fprintf(out, "def=\n");
        PrintTemps(out, &FG_def(block_node.second));
        fprintf(out, "\n");
        fprintf(out, "use=\n");
        PrintTemps(out, &FG_use(block_node.second));
        fprintf(out, "\n");
        fprintf(out, "In=\n");
        PrintTemps(out, &FG_In(block_node.second));
        fprintf(out, "\n");
        fprintf(out, "Out=\n");
        PrintTemps(out, &FG_Out(block_node.second));
        fprintf(out, "\n");
    }
}
// 以block为单位
/**
 * Steps:
 *      Initialization: Clears previous liveness information.
 *      Use-Def Population: Analyzes each basic block to determine which variables are used and defined.
 *      Iterative Analysis: Repeatedly applies the liveness dataflow equations (IN and OUT sets) until a fixed point
 *          is reached (i.e., no further changes occur in any in or out sets).
 */
void Liveness(GRAPH::Node<LLVMIR::L_block *> *r, GRAPH::Graph<LLVMIR::L_block *> &bg, std::vector<Temp_temp *> &args)
{
    init_INOUT();
    Use_def(r, bg, args);
    gi = 0;
    bool changed = true;
    while (changed)
        changed = LivenessIteration(r, bg);
}
