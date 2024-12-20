#include "ssa.h"

#include <bitset>
#include <cassert>
#include <iostream>
#include <list>
#include <stack>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "bg_llvm.h"
#include "graph.hpp"
#include "liveness.h"
#include "printLLVM.h"

using namespace std;
using namespace LLVMIR;
using namespace GRAPH;
struct imm_Dominator
{
    LLVMIR::L_block *pred;
    unordered_set<LLVMIR::L_block *> succs;
};

const int bitN = 1000;
bitset<bitN> dom[bitN];
unordered_map<int, vector<int>> dominators_int;
unordered_map<L_block *, unordered_set<L_block *>> dominators;
unordered_map<L_block *, imm_Dominator> tree_dominators;
unordered_map<L_block *, unordered_set<L_block *>> DF_array;
unordered_map<L_block *, Node<LLVMIR::L_block *> *> revers_graph;
unordered_map<Temp_temp *, AS_operand *> temp2ASoper;

static void
init_table()
{
    dominators.clear();
    tree_dominators.clear();
    DF_array.clear();
    revers_graph.clear();
    temp2ASoper.clear();
}

LLVMIR::L_prog *
SSA(LLVMIR::L_prog *prog)
{
    /**
     * SSA transformation (and other optimizations) need to be applied individually to each function in the program.
     * 
     * A single program can have multiple functions, each with its own set of variables and control flow,
     * which means that we cannot apply the SSA transformation globally across the entire program.
     */
    for (auto &fun : prog->funcs)
    {   
        // Debugging
        // cout << fun->name << endl;

        /**
         * The function init_table() clears all data structures used for dominators, 
         * dominance frontier (DF), and other intermediate results.
         */
        init_table();
        /**
         * combine_addr()
         * This step ensures that the same address operand (e.g., variables that reference the same memory location) is 
         * unified across the program. It's important for optimizing memory accesses and simplifying SSA transformations.
         */
        combine_addr(fun);
        /**
         * mem2reg()
         * This function converts memory-based scalar variables (e.g., stack allocations via alloca) to register-based 
         * variables. This is done by creating a mapping (alloca_map) from alloca variables to register operands.
         */
        mem2reg(fun);
        // DeadCodeElimination(fun);
        /**
         * Clears or resets basic block-related data structures in the function. This includes clearing 
         * block labels, removing unused blocks, or resetting the structure of the basic blocks within the function.
         */
        clear_bb(fun);

        /**
         * Create_bg()
         * Creates a basic block graph (or control flow graph, CFG) for the function using its basic blocks.
         * Purpose:
         *  Helps analyze control flow dependencies between blocks, which is crucial for determining where 
         *  to insert phi functions later in the SSA transformation.
         * 
         * Each function has its own control flow graph (CFG), consisting of basic blocks, branches, and loops.
         */
        auto RA_bg = Create_bg(fun->blocks);
        /**
         * The purpose of the SingleSourceGraph function is to traverse a control flow graph (CFG) starting 
         * from a given source node (r) and prune (delete) unreachable nodes from the graph.
         * 
         * It ensures that the control flow graph only contains reachable blocks and that the graph’s
         * nodes are correctly updated by removing unreachable ones. I guess this this a type of optimization.
         */
        SingleSourceGraph(RA_bg.mynodes[0], RA_bg, fun);
        // Show_graph(stdout,RA_bg);

        /**
         * The following functions does:
         * dominance analysis, liveness analysis, and phi function placement
         */

        Liveness(RA_bg.mynodes[0], RA_bg, fun->args);
        // Show_Liveness(stdout, RA_bg);
        
        /**
         * Computes the dominators for the basic blocks in the function's control flow graph. A basic block B dominates 
         * another block C if the execution of B guarantees that C will always be executed after B. Dominator analysis 
         * is used to determine the points in the program where different control flow paths merge,
         * which is necessary for inserting phi functions.
         */
        Dominators(RA_bg);
        // printf_domi();
        /**
         * Computes the dominator tree for the control flow graph (CFG).
         * The dominator tree is a more efficient representation of dominance relations and 
         * is useful for quickly finding the set of blocks that dominate any particular block.
         * 
         * Used to help in phi function placements and other optimizations.
         */
        tree_Dominators(RA_bg);
        // printf_D_tree();

        /**
         * Here comes the phi function insertion part!
         * 
         * Computes the dominance frontier (DF) for each basic block in the function. 
         * The dominance frontier of a block consists of the set of blocks where control flow coming 
         * from the dominated block may diverge, requiring a phi function to merge variable values.
         * 
         * Identifies the locations in the program where phi functions MUST be inserted.
         */
        // Assuming the block 0 is the default entry block
        computeDF(RA_bg, RA_bg.mynodes[0]);
        // printf_DF();

        // Phi functions in the appropriate places in the control flow graph
        Place_phi_fu(RA_bg, fun);
        // Renames variables in the SSA form to ensure that each variable has a unique name for each definition.
        // This maintains the SSA property where each variable is only assigned once.
        Rename(RA_bg);
        // After renaming, ensure that address operands (e.g., references to stack-allocated variables) are consistent 
        // across the function, now that phi functions and register-based variables are in place.
        combine_addr(fun);
        /**
         * Why is combine_addr called again:
         * 
         * After all transformations are applied, it's important to recheck and unify
         * any address references to avoid unnecessary complexity or inefficiency.
         */
    }
    return prog;
}

void DeadCodeElimination(LLVMIR::L_func *fun) {
    unordered_map<Temp_temp *, bool> is_live;  // Tracks liveness of temporaries
    unordered_map<LLVMIR::L_stm *, bool> is_stm_live;  // Tracks liveness of instructions

    // Step 1: Mark live variables using liveness analysis
    // You can run liveness analysis here if you want to initialize is_live and is_stm_live

    // Iterate backwards over the basic blocks for dead code elimination
    for (auto &block : fun->blocks) {
        list<LLVMIR::L_stm *> new_instructions;

        // Traverse instructions in reverse order
        for (auto it = block->instrs.rbegin(); it != block->instrs.rend(); ++it) {
            auto stm = *it;

            // Check if the instruction is live
            if (is_instruction_live(stm, is_live, is_stm_live)) {
                new_instructions.push_front(stm);  // Insert at the front, maintaining the original order
            } else {
                // Instruction is dead, skip it
                // Optionally log or debug here if needed
            }
        }

        block->instrs = new_instructions;  // Replace the block's instructions with the new list
    }

    // Step 3: Optionally clean up unused blocks
    // If any blocks become empty, you can remove them here
}

bool is_instruction_live(LLVMIR::L_stm *stm, unordered_map<Temp_temp *, bool> &is_live, unordered_map<LLVMIR::L_stm *, bool> &is_stm_live) {
    // Check if the instruction itself is marked as live in is_stm_live map
    if (is_stm_live.find(stm) != is_stm_live.end()) {
        return is_stm_live[stm];
    }

    // Now, analyze the instruction's operands for liveness
    switch (stm->type) {
        case L_StmKind::T_MOVE: {
            auto move = stm->u.MOVE;
            // Check if the source or destination operand is live
            return is_operand_live(move->src, is_live);
        }
        case L_StmKind::T_LOAD: {
            return is_operand_live(stm->u.LOAD->ptr, is_live);  // Check if the pointer is live
        }
        case L_StmKind::T_STORE: {
            // Check if the source or destination operand in store is live
            return is_operand_live(stm->u.STORE->src, is_live);
        }
        default:
            return true;  // For other instruction types, assume they are live for now
    }
}

bool is_operand_live(AS_operand *operand, unordered_map<Temp_temp *, bool> &is_live) {
    if (operand->kind == OperandKind::TEMP) {
        auto temp = operand->u.TEMP;
        return is_live.find(temp) != is_live.end() && is_live[temp];  // Check if the temporary is live
    }
    return false;
}

static bool
is_mem_variable(L_stm *stm)
{
    return stm->type == L_StmKind::T_ALLOCA &&
           stm->u.ALLOCA->dst->kind == OperandKind::TEMP &&
           stm->u.ALLOCA->dst->u.TEMP->type == TempType::INT_PTR &&
           stm->u.ALLOCA->dst->u.TEMP->len == 0;
}

// 保证相同的AS_operand,地址一样 。常量除外
void combine_addr(LLVMIR::L_func *fun)
{
    unordered_map<Temp_temp *, unordered_set<AS_operand **>> temp_set;
    unordered_map<Name_name *, unordered_set<AS_operand **>> name_set;

    /**
     * Iterates over all the basic blocks (for (auto &block : fun->blocks)) and 
     * then over each instruction within those blocks (for (auto &stm : block->instrs))
     */
    for (auto &block : fun->blocks)
    {
        for (auto &stm : block->instrs)
        {
            auto AS_operand_list = get_all_AS_operand(stm);
            for (auto AS_op : AS_operand_list)
            {
                if ((*AS_op)->kind == OperandKind::TEMP)
                {
                    temp_set[(*AS_op)->u.TEMP].insert(AS_op);
                    /**
                     * If the operand is of type temporary register (OperandKind::TEMP), it adds the operand (AS_op) 
                     * to the set of operands for the corresponding temporary register (temp_set[(*AS_op)->u.TEMP]).
                     */
                }
                else if ((*AS_op)->kind == OperandKind::NAME)
                {
                    name_set[(*AS_op)->u.NAME].insert(AS_op);
                    /**
                     * If the operand is of type name (OperandKind::NAME), it adds the 
                     * operand to the set for the corresponding name (name_set[(*AS_op)->u.NAME]).
                     */
                }
            }
        }
    }
    /**
     * The goal here is to group operands that correspond to the same temporary register or the same name together, 
     * so that redundant references can be identified and optimized.
     */

    for (auto temp : temp_set)
    {
        AS_operand *fi_AS_op = **temp.second.begin();
        for (auto AS_op : temp.second)
        {
            *AS_op = fi_AS_op;
        }
    }
    for (auto name : name_set)
    {
        AS_operand *fi_AS_op = **name.second.begin();
        for (auto AS_op : name.second)
        {
            *AS_op = fi_AS_op;
        }
    }
}

void mem2reg(LLVMIR::L_func *fun)
{
    unordered_map<AS_operand *, AS_operand *> alloca_map;

    for (auto &block : fun->blocks)
    {
        list<LLVMIR::L_stm *> new_list;
        for (auto &stm : block->instrs)
        {
            switch (stm->type)
            {
            case L_StmKind::T_ALLOCA:
            {
                if (is_mem_variable(stm))
                {
                    auto var = stm->u.ALLOCA->dst;
                    auto zero = AS_Operand_Temp(Temp_newtemp_int());
                    // AS_Operand_Const(0);
                    alloca_map[var] = zero;
                    new_list.push_back(L_Move(AS_Operand_Const(0), zero));
                    // new_list.push_back(L_Move(zero, var));
                    continue;
                }
            }
            break;
            case L_StmKind::T_LOAD:
            {
                if (stm->u.LOAD->ptr->kind == OperandKind::TEMP)
                {
                    assert(stm->u.LOAD->dst->kind == OperandKind::TEMP);
                    assert(stm->u.LOAD->ptr->kind == OperandKind::TEMP);
                    assert(stm->u.LOAD->ptr->u.TEMP->type == TempType::INT_PTR);
                    assert(stm->u.LOAD->ptr->u.TEMP->len == 0);
                    auto var = alloca_map[stm->u.LOAD->ptr];
                    // assert(var);
                    if (var)
                    {
                        alloca_map[stm->u.LOAD->dst] = var;
                        continue;
                    }
                }
            }
            break;
            case L_StmKind::T_STORE:
            {
                if (stm->u.STORE->ptr->kind == OperandKind::TEMP)
                {
                    assert(stm->u.STORE->ptr->u.TEMP->type == TempType::INT_PTR);
                    assert(stm->u.STORE->ptr->u.TEMP->len == 0);
                    auto ptr_operand = alloca_map[stm->u.STORE->ptr];
                    // assert(ptr_operand);
                    if (ptr_operand)
                    {
                        auto src = alloca_map[stm->u.STORE->src];
                        if (src == nullptr)
                            new_list.push_back(L_Move(stm->u.STORE->src, ptr_operand));
                        else
                            new_list.push_back(L_Move(src, ptr_operand));
                        continue;
                    }
                }
            }
            break;
            default:
                break;
            }

            auto list = get_all_AS_operand(stm);
            for (auto AS_op : list)
            {
                if ((*AS_op)->kind == OperandKind::TEMP &&
                    (*AS_op)->u.TEMP->type == TempType::INT_TEMP)
                {
                    if (alloca_map.find(*AS_op) != alloca_map.end())
                    {
                        *AS_op = alloca_map[*AS_op];
                    }
                }
            }
            new_list.push_back(stm);
        }
        block->instrs = new_list;
    }
}

static void
compute_reverse_graph(GRAPH::Graph<LLVMIR::L_block *> bg)
{
    for (auto node : bg.mynodes)
        revers_graph[node.second->info] = node.second;
}

void Dominators(GRAPH::Graph<LLVMIR::L_block *> &bg)
{
    compute_reverse_graph(bg);
    int size = bg.nodecount;

    if (size > 1000)
        assert(0);
    // revers_graph
    list<GRAPH::Node<LLVMIR::L_block *> *> ord = DFS(bg.mynodes[0], bg);

    bool flag = true;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            dom[i][j] = true;
        }
    }
    // cout << bg.mynodes[0]->info->label->name << endl;
    while (flag)
    {
        flag = false;
        for (auto node : ord)
        {
            bitset<bitN> temp;
            if (node->pred()->size())
            {
                for (int i = 0; i < size; i++)
                {
                    temp[i] = true;
                }
                for (auto i : *node->pred())
                {
                    temp &= dom[i];
                }
            }
            temp[node->mykey] = true;
            if (temp != dom[node->mykey])
            {
                dom[node->mykey] = temp;
                flag = true;
            }
        }
    }
    for (auto i_node : bg.mynodes)
    {
        int i = i_node.first;
        for (auto j_node : bg.mynodes)
        {
            int j = j_node.first;
            if (dom[i][j])
            {
                assert(bg.mynodes[i]);
                assert(bg.mynodes[j]);
                assert(bg.mynodes[j]->info);
                assert(bg.mynodes[i]->info);
                if (!dominators.count(bg.mynodes[i]->info))
                    dominators[bg.mynodes[i]->info] = unordered_set<L_block *>();
                dominators[bg.mynodes[i]->info].insert(bg.mynodes[j]->info);
                dominators_int[i].push_back(j);
            }
        }
    }
}

void printf_domi()
{
    printf("Dominator:\n");
    for (auto x : dominators)
    {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second)
        {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}

void printf_D_tree()
{
    printf("dominator tree:\n");
    for (auto x : tree_dominators)
    {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second.succs)
        {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}
void printf_DF()
{
    printf("DF:\n");
    for (auto x : DF_array)
    {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second)
        {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}

void tree_Dominators(GRAPH::Graph<LLVMIR::L_block *> &bg)
{
    int size = bg.nodecount;
    for (auto node : bg.mynodes)
    {
        tree_dominators[node.second->info].pred = nullptr;
        tree_dominators[node.second->info].succs = unordered_set<L_block *>();
    }
    vector<int> idom(size, 0);

    for (int u = 1; u < size; ++u)
    {
        for (auto v : dominators_int[u])
        {
            std::bitset<bitN> tmp = (dom[v] & dom[u]) ^ dom[u];
            if (tmp.count() == 1 && dom[u][v])
            {
                idom[u] = v;
                break;
            }
        }
    }
    for (int u = 1; u < size; ++u)
    {
        if (!bg.mynodes[u])
            continue;
        int v = idom[u];
        if (!bg.mynodes[v])
            continue;
        tree_dominators[bg.mynodes[v]->info].succs.insert(bg.mynodes[u]->info);
        tree_dominators[bg.mynodes[u]->info].pred = bg.mynodes[v]->info;
    }
}

void computeDF(GRAPH::Graph<LLVMIR::L_block *> &bg, GRAPH::Node<LLVMIR::L_block *> *r)
{
    auto DF = unordered_set<L_block *>();
    // DF local
    for (auto succ : *r->succ())
    {
        auto succNode = bg.mynodes[succ];
        if (dominators[succNode->info].find(r->info) ==
            dominators[succNode->info].end())
        {
            DF.insert(succNode->info);
        }
    }

    for (auto child : tree_dominators[r->info].succs)
    {
        if (DF_array.find(child) == DF_array.end())
        {
            computeDF(bg, revers_graph[child]);
        }
        for (auto child_up : DF_array[child])
        {
            unordered_set<L_block *> strictlyNecessaryNode = dominators[child_up];
            strictlyNecessaryNode.erase(child_up);
            L_block *directlyNecessaryNode = tree_dominators[child].pred;
            if (strictlyNecessaryNode.find(directlyNecessaryNode) ==
                strictlyNecessaryNode.end())
                DF.insert(child_up);
        }
    }
    DF_array[r->info] = DF;
}

template <typename T>
unordered_set<T>
set_intersection(unordered_set<T> &a, unordered_set<T> &b)
{
    unordered_set<T> ret;
    for (auto i : a)
    {
        if (b.find(i) != b.end())
        {
            ret.insert(i);
        }
    }
    return ret;
}

template <typename T>
unordered_set<T>
set_intersection(T &a, unordered_set<T> &b)
{
    unordered_set<T> ret;
    if (b.find(a) != b.end())
    {
        ret.insert(a);
    }
    return ret;
}

static list<AS_operand **>
get_def_int_operand(LLVMIR::L_stm *stm)
{
    list<AS_operand **> ret1 = get_def_operand(stm), ret2;
    for (auto AS_op : ret1)
    {
        assert((**AS_op).kind == OperandKind::TEMP);
        if ((**AS_op).u.TEMP->type == TempType::INT_TEMP)
        {
            ret2.push_back(AS_op);
        }
    }
    return ret2;
}

static list<AS_operand **>
get_use_int_operand(LLVMIR::L_stm *stm)
{
    list<AS_operand **> ret1 = get_use_operand(stm), ret2;
    for (auto AS_op : ret1)
    {
        if ((**AS_op).kind != OperandKind::TEMP)
            continue;
        if ((**AS_op).u.TEMP->type == TempType::INT_TEMP)
        {
            ret2.push_back(AS_op);
        }
    }
    return ret2;
}

unordered_map<AS_operand *, unordered_set<GRAPH::Node<LLVMIR::L_block *> *>>
    def_sites;

void Place_phi_fu(GRAPH::Graph<LLVMIR::L_block *> &bg, L_func *fun)
{
    unordered_map<GRAPH::Node<LLVMIR::L_block *> *, unordered_set<AS_operand *>>
        A_orig;
    for (auto &block : fun->blocks)
    {
        unordered_set<AS_operand *> temp;
        auto node = revers_graph[block];
        assert(node);
        for (auto &stm : block->instrs)
        {
            auto def_operand = get_def_int_operand(stm);
            for (auto def : def_operand)
            {
                if ((*def)->kind == OperandKind::TEMP)
                {
                    def_sites[*def].insert(node);
                    temp.insert(*def);
                }
            }
        }
        A_orig[node] = temp;
    }

    unordered_map<GRAPH::Node<LLVMIR::L_block *> *, unordered_set<AS_operand *>> A_phi;
    for (auto def_site : def_sites)
    {
        AS_operand *a = def_site.first;
        auto w = def_site.second;
        while (!w.empty())
        {
            auto n = *w.begin();
            w.erase(w.begin());
            for (auto y : DF_array[n->info])
            {
                auto y_node = revers_graph[y];
                assert(a->kind == OperandKind::TEMP);
                auto in = FG_In(y_node);
                if (in.find(a->u.TEMP) == in.end())
                    continue;
                if (A_phi[y_node].find(a) == A_phi[y_node].end())
                {
                    std::vector<std::pair<AS_operand *, Temp_label *>> phis;
                    for (int z : *y_node->pred())
                    {
                        if (!bg.mynodes[z] || !bg.mynodes[z]->info)
                            continue;
                        auto label = bg.mynodes[z]->info->label;
                        phis.push_back(make_pair(a, label));
                    }
                    y->instrs.insert(++y->instrs.begin(), L_Phi(a, phis));
                    A_phi[y_node].insert(a);
                    if (A_orig[y_node].find(a) == A_orig[y_node].end())
                    {
                        w.insert(revers_graph[y]);
                    }
                }
            }
        }
    }
}

static void
Rename_temp(GRAPH::Graph<LLVMIR::L_block *> &bg,
            GRAPH::Node<LLVMIR::L_block *> *n,
            unordered_map<Temp_temp *, stack<Temp_temp *>> &Stack)
{
    unordered_map<L_stm *, list<AS_operand **>> def_operand_map;
    unordered_map<Temp_temp *, int> push_times;

    for (auto &stm : n->info->instrs)
    {
        if (stm->type != L_StmKind::T_PHI)
        {
            auto use_operand = get_use_int_operand(stm);
            for (auto use_x : use_operand)
            {
                if (Stack[(*use_x)->u.TEMP].size())
                {
                    auto top = Stack[(*use_x)->u.TEMP].top();
                    assert(top);
                    *use_x = AS_Operand_Temp(top);
                }
            }
        }
        auto def_operand = get_def_int_operand(stm);
        for (auto def_x : def_operand)
        {
            push_times[(*def_x)->u.TEMP]++;
            auto i = Temp_newtemp_int();
            Stack[(*def_x)->u.TEMP].push(i);
            *def_x = AS_Operand_Temp(i);
        }
    }

    for (auto succ : *n->succ())
    {
        int order = 0;
        for (auto pred : *bg.mynodes[succ]->pred())
        {
            if (pred == n->mykey)
                break;
            order++;
        }
        for (auto &stm : bg.mynodes[succ]->info->instrs)
        {
            if (stm->type == L_StmKind::T_PHI)
            {
                auto phi = stm->u.PHI->phis[order];
                stm->u.PHI->phis[order] = make_pair(
                    AS_Operand_Temp(Stack[phi.first->u.TEMP].top()), phi.second);
            }
            else if (stm->type == L_StmKind::T_LABEL)
                continue;
            else
                break;
        }
    }

    for (auto son : tree_dominators[n->info].succs)
        Rename_temp(bg, revers_graph[son], Stack);
    
    for (auto m : push_times)
    {
        for (int i = 0; i < m.second; i++)
        {
            Stack[m.first].pop();
        }
    }
}

void Rename(GRAPH::Graph<LLVMIR::L_block *> &bg)
{
    unordered_map<Temp_temp *, stack<Temp_temp *>> ASstack;

    for (auto def_site : def_sites)
    {
        if (def_site.first->kind != OperandKind::TEMP)
            continue;
        auto temp = def_site.first->u.TEMP;
        assert(temp);
        ASstack[temp].push(temp);
    }
    Rename_temp(bg, bg.mynodes[0], ASstack);
}