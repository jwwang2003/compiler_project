#include "TypeCheck.h"

// global tabels
// typeMap func2retType; // function name to return type

// global token ids to type
typeMap g_token2Type;

// local token ids to type, since func param can override global param
typeMap funcparam_token2Type;
vector<typeMap *> local_token2Type;

typeMap *currScope = &g_token2Type;
std::unordered_set<string> definedFn; // a list of defined functions
int scopeLevel = -1;

// Tracking function return type & return state
tc_type fn_retType = nullptr;
bool fn_returned = false;

/**
 * typedef std::unordered_map<string,vector<aA_varDecl>*> paramMemberMap
 * This is technically a 2D array that maps a
 * string (identifier) to an array of variable declarations
 */
paramMemberMap func2Param;
paramMemberMap struct2Members;

// private util functions
void error_print(std::ostream &out, A_pos p, string info)
{
    out << "Typecheck error in line " << p->line << ", col " << p->col << ": " << info << std::endl;
    exit(0);
}

void print_token_map(typeMap *map)
{
    for (auto it = map->begin(); it != map->end(); it++)
    {
        std::cout << it->first << " : ";
        switch (it->second->type->type)
        {
        case A_dataType::A_nativeTypeKind:
            switch (it->second->type->u.nativeType)
            {
            case A_nativeType::A_intTypeKind:
                std::cout << "int";
                break;
            default:
                break;
            }
            break;
        case A_dataType::A_structTypeKind:
            std::cout << *(it->second->type->u.structType);
            break;
        default:
            break;
        }
        switch (it->second->isVarArrFunc)
        {
        case tc::tc_scalar:
            std::cout << " scalar";
            break;
        case tc::tc_array:
            std::cout << " array";
            break;
        case tc::tc_function:
            std::cout << " function";
            break;
        }
        std::cout << std::endl;
    }
}

void print_token_maps()
{
    std::cout << "global token2Type:" << std::endl;
    print_token_map(&g_token2Type);
    std::cout << "funcparam token2Type:" << std::endl;
    print_token_map(&funcparam_token2Type);
    // std::cout << "local token2Type:" << std::endl;
    // print_token_map(currScope);
}

bool comp_aA_type(aA_type target, aA_type t)
{
    if (!target || !t)
        return false;
    if (target->type != t->type)
        return false;
    if (target->type == A_dataType::A_nativeTypeKind)
        if (target->u.nativeType != t->u.nativeType)
            return false;
    if (target->type == A_dataType::A_structTypeKind)
        if (target->u.structType != t->u.structType)
            return false;
    return true;
}

bool comp_tc_type(tc_type target, tc_type t)
{
    if (!target || !t)
        return false;

    // arr kind first
    if (target->isVarArrFunc == tc::tc_array && t->isVarArrFunc == tc::tc_scalar)
        return false;

    // if target type is nullptr, alwayse ok
    return comp_aA_type(target->type, t->type);
}

tc_type tc_Type(aA_type t, tc isVarArrFunc)
{
    tc_type ret = new tc_type_;
    ret->type = t;
    ret->isVarArrFunc = isVarArrFunc;
    return ret;
}

tc_type tc_Type(aA_varDecl vd)
{
    if (vd->kind == A_varDeclType::A_varDeclScalarKind)
        return tc_Type(vd->u.declScalar->type, tc::tc_scalar);
    else if (vd->kind == A_varDeclType::A_varDeclArrayKind)
        return tc_Type(vd->u.declArray->type, tc::tc_array);
    return nullptr;
}

// public functions
void check_Prog(std::ostream &out, aA_program p)
{
    for (auto ele : p->programElements)
    {
        if (ele->kind == A_programVarDeclStmtKind)
        {
            check_VarDecl(out, ele->u.varDeclStmt);
        }
        else if (ele->kind == A_programStructDefKind)
        {
            check_StructDef(out, ele->u.structDef);
        }
    }

    for (auto ele : p->programElements)
    {
        if (ele->kind == A_programFnDeclStmtKind)
        {
            check_FnDeclStmt(out, ele->u.fnDeclStmt);
        }
        else if (ele->kind == A_programFnDefKind)
        {
            check_FnDecl(out, ele->u.fnDef->fnDecl);
        }
    }

    for (auto ele : p->programElements)
    {
        if (ele->kind == A_programFnDefKind)
        {
            check_FnDef(out, ele->u.fnDef);
        }
        else if (ele->kind == A_programNullStmtKind)
        {
            // do nothing
        }
    }

    out << "Typecheck passed!" << std::endl;
    return;
}

/**
 * This function handles variable declaration (without assignment)
 * and variable definition (with assignment)
 *
 * Supported variable types:
 * - Scalar
 * - Array
 * - Int
 * - Bool (inferred, b.c. a bool value is technically just a integer 0 or 1)
 * - Scruct
 */
void check_VarDecl(std::ostream &out, aA_varDeclStmt vd)
{
    if (!vd)
        return;
    string name;
    if (vd->kind == A_varDeclStmtType::A_varDeclKind)
    {
        // decl only
        aA_varDecl vdecl = vd->u.varDecl;
        if (vdecl == nullptr)
        {
            error_print(out, vd->pos, "aA_varDeclStmt->u.varDecl is null");
        }

        if (vdecl->kind == A_varDeclType::A_varDeclScalarKind)
        {
            if (!vdecl->u.declScalar->id)
            {
                error_print(out, vdecl->pos, "vdecl->u.declScalar->id is null");
            }

            name = *vdecl->u.declScalar->id;
            search_identifier(out, name, vdecl->pos);
            check_struct_defined(
                out,
                vdecl->pos,
                vdecl->u.declScalar->type,
                "undefined struct type in variable declaration");
            (*currScope)[name] = tc_Type(vdecl);
        }
        else if (vdecl->kind == A_varDeclType::A_varDeclArrayKind)
        {
            if (!vdecl->u.declArray->id)
            {
                error_print(out, vdecl->pos, "vdecl->u.declArray->id is null");
            }
            name = *vdecl->u.declArray->id;
            search_identifier(out, name, vdecl->pos);
            check_struct_defined(
                out,
                vdecl->pos,
                vdecl->u.declArray->type,
                "struct type in array declaration");
            tc_type arr_type = tc_Type(vdecl);
            arr_type->arrayLength = vdecl->u.declArray->len;
            (*currScope)[name] = arr_type;
        }
    }
    else if (vd->kind == A_varDeclStmtType::A_varDefKind)
    {
        // decl and def

        /**
         * Example: let a: int = 1;
         */

        // Get the variable definition
        aA_varDef vdef = vd->u.varDef;
        if (vdef == nullptr)
            error_print(out, vd->pos, "aA_varDeclStmt->u.varDef is null");

        // Handling the checks for scalar datatype
        if (vdef->kind == A_varDefType::A_varDefScalarKind)
        {
            // Sanity checks
            if (!vdef->u.defScalar)
                error_print(out, vdef->pos, "vdef->u.defScalar is null");
            if (!vdef->u.defScalar->id)
                error_print(out, vdef->pos, "vdef->u.defScalar->id is null");
            if (!vdef->u.defScalar->val)
                error_print(out, vdef->pos, "vdef->u.defScalar->val is null");

            name = *vdef->u.defScalar->id;
            search_identifier(out, name, vdef->pos);

            // struct aA_varDef_ {
            //     A_pos pos;
            //     A_varDefType kind;
            //     union {
            //         aA_varDefScalar defScalar;
            //         aA_varDefArray defArray;
            //     } u;
            // };
            // struct aA_varDefScalar_ {
            //     A_pos pos;
            //     string* id;
            //     aA_type type;
            //     aA_rightVal val;
            // };

            aA_varDefScalar scalar = vdef->u.defScalar;

            if (scalar->type)
            {
                // If the scalar is typed...
                tc_type left_type = tc_Type(scalar->type, tc::tc_scalar);

                switch (scalar->type->type)
                {
                case A_structTypeKind:
                {
                    check_struct_defined(
                        out,
                        vdef->pos,
                        scalar->type,
                        "struct type mismatch between declaration and definition");

                    if (scalar->val->kind != A_arithExprValKind)
                        error_print(
                            out,
                            vdef->pos,
                            "no right struct value in variable definition");
                    break;
                }
                case A_nativeTypeKind:
                {
                    if (scalar->val->kind == A_boolExprValKind)
                    {
                        check_BoolExpr(out, scalar->val->u.boolExpr);
                        if (comp_tc_type(left_type, bool_type(vdef->pos)) == false)
                        {
                            error_print(
                                out,
                                vdef->pos,
                                "type mismatch in variable declaration");
                        }
                    }
                    else if (scalar->val->kind != A_arithExprValKind)
                        error_print(
                            out,
                            vdef->pos,
                            "type mismatch in variable declaration");
                    break;
                }
                default:
                    error_print(
                        out,
                        vdef->pos,
                        "type mismatch in variable declaration");
                    break;
                }

                // We assume by default that an arithmetic experssion on the RHS
                tc_type right_type = check_ArithExpr(out, scalar->val->u.arithExpr);
                if (is_empty_type(right_type))
                {
                    error_print(out, vdef->pos, "Type mismatch in varDecl!");
                }
                if (!comp_tc_type(left_type, right_type))
                {
                    error_print(
                        out,
                        vdef->pos,
                        "struct type in varDecl! (decl and def mismatch)");
                }
                (*currScope)[name] = left_type;
            }
            else
            {
                // If the scalar is un-typed...
                switch (scalar->val->kind)
                {
                case A_boolExprValKind:
                {
                    check_BoolExpr(out, scalar->val->u.boolExpr);
                    tc_type derived_type = bool_type(vdef->pos);
                    if (is_empty_type(derived_type))
                    {
                        error_print(
                            out,
                            vdef->pos,
                            "type mismatch in variable definition (bool)");
                    }
                    (*currScope)[name] = derived_type;
                }
                break;
                case A_arithExprValKind:
                {
                    tc_type derived_type = check_ArithExpr(
                        out,
                        scalar->val->u.arithExpr);
                    // Check if the LHS is a void value (non-typed)
                    if (is_empty_type(derived_type))
                    {
                        char err_msg[100];
                        sprintf(
                            err_msg,
                            "cannot assign void value to variable %s",
                            name.c_str());
                        error_print(out, vdef->pos, err_msg);
                    }
                    if (derived_type->isVarArrFunc == tc::tc_function)
                    {
                        char err_msg[100];
                        sprintf(
                            err_msg,
                            "cannot assign a function to variable %s",
                            name.c_str());
                        error_print(out, vdef->pos, err_msg);
                    }
                    (*currScope)[name] = derived_type;
                    break;
                }
                default:
                    error_print(
                        out,
                        vdef->pos,
                        "type mismatch in variable definition");
                    break;
                }
            }
        }
        // Handling the check for array datatype
        else if (vdef->kind == A_varDefType::A_varDefArrayKind)
        {
            // Sanity check
            if (!vdef->u.defArray)
                error_print(out, vdef->pos, "vdef->u.defArray is null");
            if (!vdef->u.defArray->id)
                error_print(out, vdef->pos, "vdef->u.defArray->id is null");

            name = *vdef->u.defArray->id;
            search_identifier(out, name, vdef->pos);

            // struct A_varDeclArray_ {
            //     A_pos pos;
            //     char* id;
            //     int len;
            //     A_type type;
            // };

            aA_varDefArray array_def = vdef->u.defArray;
            int len = array_def->len;
            if (len < 0)
            {
                error_print(out, vdef->pos, "negative array length");
            }
            if (array_def->vals.size() != len)
            {
                error_print(out, vdef->pos, "array length mismatch");
            }

            if (is_empty_type(vdef->u.defArray->type))
            {
                tc_type left_type = NULL;
                for (const auto &i : vdef->u.defArray->vals)
                {
                    if (i->kind == A_boolExprValKind)
                    {
                        check_BoolExpr(out, i->u.boolExpr);
                        if (!left_type)
                        {
                            left_type = bool_type(vdef->pos);
                            continue;
                        }
                        if (comp_tc_type(left_type, bool_type(vdef->pos)) == false)
                            error_print(out, vdef->pos,
                                        "value type aren't consistent in array declaration!");
                    }
                    else if (i->kind == A_arithExprValKind)
                    {
                        tc_type right_type = check_ArithExpr(out, i->u.arithExpr);
                        if (right_type->isVarArrFunc == tc::tc_function)
                            error_print(out, vdef->pos,
                                        "cannot assign a function to array " + name +
                                            " on line " + std::to_string(vdef->pos->line) +
                                            ", col " + std::to_string(vdef->pos->col) + ".");
                        if (!left_type)
                        {
                            left_type = right_type;
                            continue;
                        }
                        if (!comp_tc_type(left_type, right_type))
                            error_print(out, vdef->pos,
                                        "value type aren't consistent in array declaration!");
                    }
                    else
                        error_print(out, vdef->pos, "Type mismatch in varDecl!");
                }

                tc_type arr_type = tc_Type(vdef->u.defArray->type, tc::tc_array);
                arr_type->arrayLength = len;
                (*currScope)[name] = arr_type;
                return;
            }

            tc_type left_type = tc_Type(vdef->u.defArray->type, tc::tc_scalar);
            for (const auto &i : vdef->u.defArray->vals)
            {
                if (i->kind == A_boolExprValKind)
                {
                    check_BoolExpr(out, i->u.boolExpr);
                    if (comp_tc_type(left_type, bool_type(vdef->pos)) == false)
                        error_print(out, vdef->pos,
                                    "array element type conflict with array type!");
                }
                else if (i->kind == A_arithExprValKind)
                {
                    tc_type right_type = check_ArithExpr(out, i->u.arithExpr);
                    if (right_type->isVarArrFunc == tc::tc_function)
                        error_print(out, vdef->pos,
                                    "cannot assign a function to array " + name +
                                        " on line " + std::to_string(vdef->pos->line) +
                                        ", col " + std::to_string(vdef->pos->col) + ".");
                    if (!comp_tc_type(left_type, right_type))
                        error_print(out, vdef->pos,
                                    "array element type conflict with array type!");
                }
                else
                    error_print(out, vdef->pos, "type mismatch in variable declaration");
            }
            tc_type arr_type = tc_Type(vdef->u.defArray->type, tc::tc_array);
            arr_type->arrayLength = len;
            (*currScope)[name] = arr_type;
            return;
        }
    }
    return;
}

void check_StructDef(std::ostream &out, aA_structDef sd)
{
    if (!sd)
        return;
    string name = *sd->id;
    if (struct2Members.find(name) != struct2Members.end())
        error_print(out, sd->pos, "This id is already defined!");
    struct2Members[name] = &(sd->varDecls);
    return;
}

void check_FnDecl(std::ostream &out, aA_fnDecl fd)
{
    if (!fd)
        return;
    string name = *fd->id;

    if (g_token2Type.find(name) != g_token2Type.end())
    {
        tc_type declaredType = g_token2Type[name];

        if (!declaredType)
        {
            char err_msg[100];
            sprintf(
                err_msg,
                "function %s is declared but return type is unknown",
                name.c_str());
            error_print(out, fd->pos, err_msg);
        }

        paramMemberMap::const_iterator fn_type_1 = func2Param.find(name);
        typeMap::const_iterator fn_type_2 = g_token2Type.find(name);

        // if (fn_type_1 != func2Param.end() && fn_type_2 != g_token2Type.end())
        // {
        //   error_print(out, fd->pos, "function is already defined");
        // }

        // if (fn_type_1 != func2Param.end())
        // {
        //     if (!comp_tc_type(declaredType, tc_Type(fd->type, tc::tc_function)))
        //     {
        //         error_print(
        //             out,
        //             fd->pos,
        //             "function return type does not match existing declaration");
        //     }
        // }

        if (fn_type_2 != g_token2Type.end())
        {
          if (fd->type->type != fn_type_2->second->type->type)
          {
            error_print(out, fd->pos, "function return type does not match existing declaration");
          }
        }

        // is function params matches decl
        /*
        There are three conditions to consider:
        1. Return type mismatch (already checked above)
        2. Whether there is parameter declaration
        3. Whether the NUMBER of parameters MATCH
        4. If the number of parameters match, then do their types match
        */

        /*
        Checking the return type of the function declaration
        switch(fd->type->type) {
        case A_dataType::A_structTypeKind:
            ...
            break;
        ...
        default:
            break;
        }
        */

        if (!fd->paramDecl)
        {
            error_print(out, fd->pos, "function parameter(s) is missing");
        }
        if (func2Param[name]->size() != fd->paramDecl->varDecls.size())
        {
            // func2Param[name] is the function signature that is already defined
            // fd->paramDecl is the function that we are currently processing
            error_print(out, fd->pos, "function parameter type mismatch");
        }
        for (size_t i = 0; i < fd->paramDecl->varDecls.size(); i++)
        {
            tc_type declaredParamType = tc_Type(func2Param[name]->at(i));
            tc_type funcParamType = tc_Type(fd->paramDecl->varDecls[i]);

            if (!comp_tc_type(declaredParamType, funcParamType))
            {
                error_print(
                    out,
                    fd->pos,
                    "function parameter type mismatch");
            }
        }
    }
    else
    {
        func2Param[name] = &(fd->paramDecl->varDecls);
        // g_token2Type[name] = tc_Type(fd->type, tc::tc_function);
        (*currScope)[name] = tc_Type(fd->type, tc::tc_function);

        if (!is_empty_type(fd->type))
        {
            // no need to check for primitives
            // only need to check if a custom DS exists or not
            check_struct_defined(
                out,
                fd->pos,
                fd->type,
                "function return type's struct type is not defined");
        }

        for (const auto &param : fd->paramDecl->varDecls)
        {
            switch (param->kind)
            {
            case A_varDeclScalarKind:
                if (!param->u.declScalar || !param->u.declScalar->type)
                {
                    error_print(out, param->pos, "function parameter type is null");
                }
                if (param->u.declScalar)
                {
                    check_struct_defined(
                        out,
                        param->pos,
                        param->u.declScalar->type,
                        "function parameter's struct type is not defined");
                }
                break;
            case A_varDeclArrayKind:
                if (!param->u.declArray || !param->u.declArray->type)
                {
                    error_print(out, param->pos, "function parameter type is null");
                }
                if (param->u.declArray)
                {
                    check_struct_defined(
                        out,
                        param->pos,
                        param->u.declArray->type,
                        "Function parameter's struct type is not defined!");
                }
                break;
            default:
                error_print(out, param->pos, "function parameter type is null");
                break;
            }
        }
    }
    return;
}

void check_FnDeclStmt(std::ostream &out, aA_fnDeclStmt fd)
{
    if (!fd)
        return;
    check_FnDecl(out, fd->fnDecl);
    return;
}

void check_FnDef(std::ostream &out, aA_fnDef fd)
{
    /*
  NOTE:
  1. Function overloading is not supported
  2. Return type
  3. Parameter identifiers cannot share the same name
  (even if not in the same scope)
  */

    if (!fd)
        return;
    // should match if declared
    check_FnDecl(out, fd->fnDecl);

    // add params to local tokenmap, func params override global ones?
    // for (aA_varDecl vd : fd->fnDecl->paramDecl->varDecls)
    // {
    //   if (!vd || !vd->u.declScalar || !vd->u.declScalar->id)
    //     error_print(out, fd->pos, "Function parameter is null.");
    // }

    // Initial checks
    if (!fd->fnDecl->paramDecl)
    {
        error_print(out, fd->pos, "function paramDecl is null");
    }

    for (const aA_varDecl vd : fd->fnDecl->paramDecl->varDecls)
    {
        // Loop through every parameter
        if (!vd || !vd->u.declScalar || !vd->u.declScalar->id || !vd->u.declArray || !vd->u.declArray->id)
        {
            error_print(out, fd->pos, "function parameter is null");
        }
         
        string name = *vd->u.declScalar->id;

        if (funcparam_token2Type.find(name) != funcparam_token2Type.end())
        {
            char err_msg[100];
            sprintf(err_msg, "identifier '%s' is taken (function parameter)", name.c_str());
            error_print(out, vd->pos, err_msg);
        }

        // Ensure that the global and upper level local scopes
        // do not have conflicting identifiers
        search_identifier(out, name, vd->pos, true);
        funcparam_token2Type[name] = tc_Type(vd);
    }

    if (!fd->fnDecl->type)
        fn_retType = nullptr;
    else
        // retType = tc_Type(fd->fnDecl->type, 2);
        fn_retType = tc_Type(fd->fnDecl->type, tc::tc_scalar);

    /* fill code here */
    // Enter the function body and start processing its contents
    scopeIn();
    fn_returned = false;

    for (aA_codeBlockStmt stmt : fd->stmts)
    {
        check_CodeblockStmt(out, stmt);
        // return value type should match

        /* fill code here */
        // See below...
    }

    if (!fn_returned && is_typed(fn_retType))
    {
        char err_msg[100];
        sprintf(err_msg, "function %s is typed so it should have a return value", fd->fnDecl->id->c_str());
        error_print(out, fd->pos, err_msg);
    }

    scopeOut();
    funcparam_token2Type.clear(); // clear temporary storage for function parameters

    return;
}

void check_CodeblockStmt(std::ostream &out, aA_codeBlockStmt cs)
{
    if (!cs)
        return;
    // variables declared in a code block should not duplicate with outer ones.
    switch (cs->kind)
    {
    case A_codeBlockStmtType::A_varDeclStmtKind:
        check_VarDecl(out, cs->u.varDeclStmt);
        break;
    case A_codeBlockStmtType::A_assignStmtKind:
        check_AssignStmt(out, cs->u.assignStmt);
        break;
    case A_codeBlockStmtType::A_ifStmtKind:
        check_IfStmt(out, cs->u.ifStmt);
        break;
    case A_codeBlockStmtType::A_whileStmtKind:
        check_WhileStmt(out, cs->u.whileStmt);
        break;
    case A_codeBlockStmtType::A_callStmtKind:
        check_CallStmt(out, cs->u.callStmt);
        break;
    case A_codeBlockStmtType::A_returnStmtKind:
        check_ReturnStmt(out, cs->u.returnStmt);
        break;
    default:
        break;
    }
    return;
}

void check_AssignStmt(std::ostream &out, aA_assignStmt as)
{
    if (!as)
        return;
    string name;
    tc_type deduced_type; // right, deduced type if type is omitted at decl
    tc_type actual_type;  // left

    if (!as->leftVal)
    {
        error_print(out, as->pos, "missing LHS in assignment operation");
    }
    if (!as->rightVal)
    {
        error_print(out, as->pos, "missing RHS in assignment operation");
    }

    switch (as->leftVal->kind)
    {
    case A_leftValType::A_varValKind:
    {
        if (!as->leftVal->u.id)
        {
            // this case technically isn't possible, otherwise this would
            // violate the syntax rules
            error_print(out, as->pos, "LHS missing identifier");
        }

        name = *as->leftVal->u.id;
        A_pos pos = as->pos;              // assignment operator position
        A_pos lhs_pos = as->leftVal->pos; // variable identifier (left hand side)

        tc_type type = search_identifier(out, name, lhs_pos, false);
        if (type->isVarArrFunc == tc::tc_function)
        {
            char temp[100];
            sprintf(temp, "cannot assign a value to function '%s'", name.c_str());
            error_print(out, lhs_pos, temp);
        }

        actual_type = tc_Type(type->type, tc::tc_scalar);

        switch (as->rightVal->kind)
        {
        case A_boolExprValKind:
        {
            check_BoolExpr(out, as->rightVal->u.boolExpr);
            deduced_type = bool_type(as->pos);
            if (!is_typed(actual_type))
            {
                if (actual_type && actual_type->isVarArrFunc == 1)
                    error_print(out, as->pos,
                                "1 cannot assign a value to array " + name + " on line " +
                                    std::to_string(as->pos->line) + ", col " +
                                    std::to_string(as->pos->col) + ".");
                assign_type(name, deduced_type);
            }
            if (comp_tc_type(deduced_type, actual_type) == false)
                error_print(out, as->pos,
                            "1 cannot assign due to type mismatch: " +
                                get_type(actual_type) + "!=" + get_type(deduced_type));
        }
        break;
        case A_arithExprValKind:
        {
            deduced_type = check_ArithExpr(out, as->rightVal->u.arithExpr);
            if (!is_typed(deduced_type))
                error_print(out, as->pos,
                            "cannot assign void value to variable " + name +
                                " on line " + std::to_string(as->pos->line) + ", col " +
                                std::to_string(as->pos->col) + ".");
            if (deduced_type->isVarArrFunc == 2)
                error_print(out, as->pos,
                            "cannot assign a function " + name + " on line " +
                                std::to_string(as->pos->line) + ", col " +
                                std::to_string(as->pos->col) + ".");
            if (!is_typed(actual_type) && actual_type)
            {
                if (actual_type->isVarArrFunc != deduced_type->isVarArrFunc)
                    error_print(out, as->pos,
                                "cannot assign a value to " + name + " on line " +
                                    std::to_string(as->pos->line) + ", col " +
                                    std::to_string(as->pos->col) +
                                    " due to isVarArrFunc mismatch.");
                // check array length if you want
                assign_type(name, deduced_type);
            }
            else if (comp_tc_type(actual_type, deduced_type) == false)
            {
                error_print(out, as->pos,
                            "1 cannot assign due to type mismatch: " +
                                get_type(actual_type) + "!=" + get_type(deduced_type));
            }
            // else if (actual_type->isVarArrFunc == 1)
            // {
            // if (actual_type->arrayLength != deduced_type->arrayLength)
            // error_print(out, as->pos, "cannot assign due to array length
            // mismatch: " + std::to_string(actual_type->arrayLength) + "!=" +
            // std::to_string(deduced_type->arrayLength));
            // }
        }
        break;
        default:
            error_print(out, as->pos, "Type mismatch in assignment!");
            break;
        }
    }
    break;
    case A_leftValType::A_arrValKind:
    {
        if (!as->leftVal->u.arrExpr || !as->leftVal->u.arrExpr->arr ||
            !as->leftVal->u.arrExpr->idx)
            error_print(out, as->pos, "arrExpr error in leftVal");

        aA_type arrType = check_ArrayExpr(out, as->leftVal->u.arrExpr);
        // tc_type arr_type = search_identifier(out, *as->arr->u.id, as->pos, false);

        actual_type = tc_Type(arrType, tc::tc_scalar);
        switch (as->rightVal->kind)
        {
        case A_boolExprValKind:
            // check_BoolExpr(out, as->rightVal->u.boolExpr);
            // deduced_type = bool_type(as->pos);
            // if (comp_tc_type(deduced_type, actual_type) == false)
            //     error_print(out, as->pos,
            //                 "cannot assign due to array type mismatch: " +
            //                     get_type(actual_type) + "!=" + get_type(deduced_type));
            // break;
        case A_arithExprValKind:
            // deduced_type = check_ArithExpr(out, as->rightVal->u.arithExpr);
            // if (comp_tc_type(deduced_type, actual_type) == false)
            //     error_print(out, as->pos,
            //                 "cannot assign due to array type mismatch: " +
            //                     get_type(actual_type) + "!=" + get_type(deduced_type));
            // if (deduced_type->isVarArrFunc == 2)
            //     error_print(out, as->pos,
            //                 "cannot assign a function to array member " + name +
            //                     " on line " + std::to_string(as->pos->line) + ", col " +
            //                     std::to_string(as->pos->col) + ".");
            break;
        default:
            error_print(out, as->pos, "Type mismatch in assignment!");
            break;
        }
    }
    break;
    case A_leftValType::A_memberValKind:
    {   
        /**
         * We need to check:
         * 1. If the struct exists
         * 2. If the member exists in the struct
         * 3. If the type of the member matches with LHS value type
         */
        actual_type = check_MemberExpr(out, as->leftVal->u.memberExpr);
        name = *as->leftVal->u.memberExpr->memberId;

        switch (as->rightVal->kind)
        {
        case A_boolExprValKind:
        {
            check_BoolExpr(out, as->rightVal->u.boolExpr);
            deduced_type = bool_type(as->pos);
            if (comp_tc_type(deduced_type, actual_type) == false)
                error_print(out, as->pos,
                            "1 cannot assign due to type mismatch: " +
                                get_type(actual_type) + "!=" + get_type(deduced_type));
        }
        break;

        case A_arithExprValKind:
        {
            deduced_type = check_ArithExpr(out, as->rightVal->u.arithExpr);
            if (deduced_type->isVarArrFunc == 2)
                error_print(out, as->pos,
                            "cannot assign a function to struct member " + name +
                                " on line " + std::to_string(as->pos->line) + ", col " +
                                std::to_string(as->pos->col) + ".");
            if (comp_tc_type(actual_type, deduced_type) == false)
                error_print(out, as->pos,
                            "1 cannot assign due to type mismatch: " +
                                get_type(actual_type) + "!=" + get_type(deduced_type));
        }
        break;

        default:
            error_print(out, as->pos, "Type mismatch in assignment!");
            break;
        }
    }
    break;
    }
    return;
}

aA_type check_ArrayExpr(std::ostream &out, aA_arrayExpr ae)
{
    // struct aA_arrayExpr_ {
    //     A_pos pos;
    //     aA_leftVal arr;
    //     aA_indexExpr idx;
    // };

    if (!ae)
        return nullptr;

    string name = *ae->arr->u.id;
    // check array name
    // struct aA_leftVal_ {
    //     A_pos pos;
    //     A_leftValType kind;
    //     union {
    //         string* id;
    //         aA_arrayExpr arrExpr;
    //         aA_memberExpr memberExpr;
    //     } u;
    // };
    // typedef enum {
    //     A_varValKind,
    //     A_arrValKind,
    //     A_memberValKind
    // } A_leftValType;

    // B.c. this is checking an array expression, we only need to consider
    // kind of A_varValKind and A_memberValKind (the member might be an array)
    // If the kind is of array -> 2D array, and that is not supported (yet?)
    tc_type arr_type;
    A_leftValType LHS_kind = ae->arr->kind;
    // 1. Extract array type
    switch (LHS_kind)
    {
    case A_varValKind:
        if (!ae->arr->u.id)
            error_print(out, ae->pos, "no id in arrayExpr");
        arr_type = search_identifier(out, name, ae->pos, false);
        if (arr_type == nullptr)
        {
            error_print(
                out,
                ae->pos,
                "undeclared identifier in array expression");
        }
        break;
    case A_arrValKind:
        error_print(out, ae->pos, "2D array is not supported in TeaPL");
        break;
    case A_memberValKind:
        if (!ae->arr->u.memberExpr)
            error_print(out, ae->pos, "no memberExpr in arrayExpr");
        arr_type = check_MemberExpr(out, ae->arr->u.memberExpr);
        break;
    default:
        error_print(out, ae->pos, "unknown kind in array expression");
        break;
    }

    // 2. Check index
    /**
     * An array's index can be of two types: a number (int) or an identifier
     * 1. If the index is a number, we only have to check if its within bounds
     * 2. If the index is an identifier, then we have to check:
     *      - identifier exists
     *      - isVarArrFunc == 0 (indicating it is a scalar)
     *      - that the identifier is TYPED and is of:
     *          - native type kind  (A_nativeTypeKind)
     *          - int type kind     (A_intTypeKind)
     * P.S. we cannot check if index bound for identifiers because we cannot
     * determine the value during compile time
     */
    switch (ae->idx->kind)
    {
    case A_numIndexKind:
        if (
            arr_type->arrayLength <= ae->idx->u.num || 
            ae->idx->u.num < 0
        )
            error_print(
                out, 
                ae->pos, 
                "Array index out of bound!"
            );
        break;
    case A_idIndexKind:
    {
        if (ae->idx->u.id == nullptr)
        {
            error_print(out, ae->pos, "id is null in array expression index");
        }
        tc_type index_type = search_identifier(
            out,
            *ae->idx->u.id,
            ae->pos,
            false);
        if (index_type == nullptr)
        {
            error_print(
                out,
                ae->pos,
                "id in array expression index is not declared");
        }
        if (
            index_type->isVarArrFunc != tc::tc_scalar || // scalar
            index_type->type == nullptr ||               // typed
            index_type->type->type != A_dataType::A_nativeTypeKind ||
            index_type->type->u.nativeType != A_nativeType::A_intTypeKind)
        {
            error_print(out, ae->pos, "array index should be a scalar int");
        }
    }
    break;
    default:
        error_print(
            out,
            ae->pos,
            "array index should be an integer or identifier");
        break;
    }

    return arr_type->type;
}

tc_type check_MemberExpr(std::ostream &out, aA_memberExpr me)
{
    // struct aA_memberExpr_ {
    //     A_pos pos;
    //     aA_leftVal structId;
    //     string* memberId;
    // };

    // check if the member exists and return the tyep of the member
    if (!me)
        return nullptr;

    string name = *me->structId->u.id;
    string memberId = *me->memberId;
    tc_type structType = nullptr;

    // check struct name
    aA_leftVal struct_id = me->structId;

    if (struct_id == nullptr || me->memberId == nullptr)
    {
        error_print(
            out,
            me->pos,
            "struct id or member id is null in member expression");
    }

    switch (struct_id->kind)
    {
    case A_varValKind:
        if (struct_id->u.id == nullptr)
            error_print(
                out,
                me->pos,
                "variable id isstru null in member expression");
        structType = search_identifier(out, name, me->pos, false);
        break;
    case A_arrValKind:
        check_ArrayExpr(out, struct_id->u.arrExpr);
        structType = search_identifier(out, name, me->pos, false);
        break;
    case A_memberValKind:
        structType = check_MemberExpr(out, struct_id->u.memberExpr);
        break;
    default:
        error_print(out, me->pos, "invalid member type in member expression");
        break;
    }

    // check member name
    if (
        is_empty_type(structType) ||
        structType->type->type != A_dataType::A_structTypeKind)
    {
        char err_msg[100];
        sprintf(err_msg, "'%s' is not a struct", name.c_str());
        error_print(out, me->pos, err_msg);
    }
    if (structType->type->u.structType == nullptr)
    {
        error_print(out, me->pos, "struct is not defined");
    }

    // *structType->type->u.structType => gives the name of the struct
    // typedef std::unordered_map<string, vector<aA_varDecl>*> paramMemberMap;
    vector<aA_varDecl> *members = struct2Members[*structType->type->u.structType];
    if (!members)
        error_print(out, me->pos, "member id not found");
    string member = *me->memberId;

    bool found = false;
    for (const auto mem : *members) {
        switch (mem->kind) {
            case A_varDeclScalarKind:
                if (*mem->u.declScalar->id == memberId) {
                    found = true;
                    break;
                }
                break;
            case A_varDeclArrayKind:
                if (*mem->u.declArray->id == memberId) {
                    found = true;
                    break;
                }
                break;
        }
    }

    if (found == false) {
        char err_msg[100];
        sprintf(
            err_msg,
            "member '%s' is not defined in struct '%s'",
            memberId.c_str(),
            name.c_str()
        );
        error_print(out, me->pos, err_msg);
    }

    for (const aA_varDecl &var_decl : *members)
    {
        if (
            var_decl == nullptr ||
            var_decl->u.declScalar == nullptr ||
            var_decl->u.declScalar->id == nullptr)
        {
            error_print(out, me->pos, "member is null");
        }
        if (*var_decl->u.declScalar->id == member)
            return tc_Type(var_decl);
    }

    return nullptr;
}

void check_IfStmt(std::ostream &out, aA_ifStmt is)
{
    if (!is)
        return;
    check_BoolUnit(out, is->boolUnit);

    /* fill code here, take care of variable scope */
    // local_token2Type.push_back(&funcparam_token2Type);
    scopeIn();
    for (aA_codeBlockStmt s : is->ifStmts)
    {
        check_CodeblockStmt(out, s);
    }
    // local_token2Type.pop_back();
    scopeOut();

    // local_token2Type.push_back(&funcparam_token2Type);
    scopeIn();
    for (aA_codeBlockStmt s : is->elseStmts)
    {
        check_CodeblockStmt(out, s);
    }
    // local_token2Type.pop_back();
    scopeOut();

    return;
}

void check_BoolExpr(std::ostream &out, aA_boolExpr be)
{
    if (!be)
        return;
    switch (be->kind)
    {
    case A_boolExprType::A_boolBiOpExprKind:
        // Recursive calls to the left and right values
        check_BoolExpr(out, be->u.boolBiOpExpr->left);
        check_BoolExpr(out, be->u.boolBiOpExpr->right);
        break;
    case A_boolExprType::A_boolUnitKind:
        check_BoolUnit(out, be->u.boolUnit);
        break;
    default:
        break;
    }
    return;
}

void check_BoolUnit(std::ostream &out, aA_boolUnit bu)
{
    // struct aA_boolUnit_ {
    //     A_pos pos;
    //     A_boolUnitType kind;
    //     union {
    //         aA_comExpr comExpr;
    //         aA_boolExpr boolExpr;
    //         aA_boolUOpExpr boolUOpExpr;
    // } u;

    if (!bu)
        return;
    switch (bu->kind)
    {
    case A_boolUnitType::A_comOpExprKind:
    {
        // typedef enum {
        //     A_comOpExprKind,
        //     A_boolExprKind,
        //     A_boolUOpExprKind
        // } A_boolUnitType;

        aA_comExpr comExpr = bu->u.comExpr; // Extract the comparison expr.

        // Check
        if (
            comExpr == nullptr ||
            comExpr->left == nullptr ||
            comExpr->right == nullptr)
        {
            // Compares TWO values (therefore left and right must exist)
            error_print(
                out,
                bu->pos,
                "comparison is null, or one, or both, of its LHS or RHS is null");
        }

        tc_type LHS = check_ExprUnit(out, comExpr->left);
        tc_type RHS = check_ExprUnit(out, comExpr->right);

        if (is_empty_type(LHS) || is_empty_type(LHS))
        {
            error_print(out, bu->pos, "void value cannot be used in comparison");
        }
        if (LHS->isVarArrFunc != RHS->isVarArrFunc)
        {
            error_print(out, bu->pos, "different types in comparison!");
        }
        if (comp_tc_type(LHS, RHS) == false)
        {
            char err_msg[100];
            sprintf(
                err_msg,
                "%s cannot be compared with %s b.c. of different types",
                get_type(LHS).c_str(),
                get_type(RHS).c_str());
            error_print(out, bu->pos, err_msg);
        }
    }
    break;
    case A_boolUnitType::A_boolExprKind:
        check_BoolExpr(out, bu->u.boolExpr);
        break;
    case A_boolUnitType::A_boolUOpExprKind:
        check_BoolUnit(out, bu->u.boolUOpExpr->cond);
        break;
    default:
        break;
    }
    return;
}

tc_type check_ExprUnit(std::ostream &out, aA_exprUnit eu)
{
    // return the aA_type of expr eu
    if (!eu)
        return nullptr;
    tc_type ret;
    switch (eu->kind)
    {
    case A_exprUnitType::A_idExprKind:
    {
        if (!eu->u.id)
        {
            error_print(out, eu->pos, "no id in expression unit");
        }
        string name = *eu->u.id;
        ret = search_identifier(out, name, eu->pos, false);
        if (ret == nullptr)
        {
            error_print(out, eu->pos, "unknown identifier in expression unit");
        }
    }
    break;
    case A_exprUnitType::A_numExprKind:
    {
        aA_type numt = new aA_type_;
        numt->pos = eu->pos;
        numt->type = A_dataType::A_nativeTypeKind;
        numt->u.nativeType = A_nativeType::A_intTypeKind;
        ret = tc_Type(numt, tc::tc_scalar);
    }
    break;
    case A_exprUnitType::A_fnCallKind:
    {
        check_FuncCall(out, eu->u.callExpr);
        // check_FuncCall will check if the function is defined
        ret = search_identifier(out, *eu->u.callExpr->fn, eu->pos, false);
        ret = new tc_type_(*ret);
        ret->isVarArrFunc = tc::tc_scalar;
    }
    break;
    case A_exprUnitType::A_arrayExprKind:
    {
        check_ArrayExpr(out, eu->u.arrayExpr);
    }
    break;
    case A_exprUnitType::A_memberExprKind:
    {
        ret = check_MemberExpr(out, eu->u.memberExpr);
    }
    break;
    case A_exprUnitType::A_arithExprKind:
    {
        ret = check_ArithExpr(out, eu->u.arithExpr);
    }
    break;
    case A_exprUnitType::A_arithUExprKind:
    {
        ret = check_ExprUnit(out, eu->u.arithUExpr->expr);
    }
    break;
    }
    return ret;
}

tc_type check_ArithExpr(std::ostream &out, aA_arithExpr ae)
{
    if (!ae)
        return nullptr;
    tc_type ret;
    switch (ae->kind)
    {
    case A_arithExprType::A_arithBiOpExprKind:
    {
        ret = check_ArithExpr(out, ae->u.arithBiOpExpr->left);
        tc_type rightTyep = check_ArithExpr(out, ae->u.arithBiOpExpr->right);
        if (ret->type->type > 0 || ret->type->type != A_dataType::A_nativeTypeKind || ret->type->u.nativeType != A_nativeType::A_intTypeKind ||
            rightTyep->type->type > 0 || rightTyep->type->type != A_dataType::A_nativeTypeKind || rightTyep->type->u.nativeType != A_nativeType::A_intTypeKind)
            error_print(out, ae->pos, "only int can be arithmetic expression operation values!");
    }
    break;
    case A_arithExprType::A_exprUnitKind:
        ret = check_ExprUnit(out, ae->u.exprUnit);
        break;
    }
    return ret;
}

void check_FuncCall(std::ostream &out, aA_fnCall fc)
{
    if (!fc)
        return;
    // check if function defined
    if (!fc->fn)
    {
        error_print(out, fc->pos, "function name is null");
    }
    string func_name = *fc->fn;

    // Check if the function is defined
    if (func2Param.find(func_name) == func2Param.end())
    {
        error_print(out, fc->pos, "function is not defined");
    }

    // Extract expected function parameter signature
    vector<aA_varDecl> *params = func2Param[func_name];
    if (!params)
    {
        error_print(out, fc->pos, "function parameter(s) are null");
    }

    // Check if parameter list matches
    if (fc->vals.size() < params->size())
    {
        error_print(out, fc->pos, "too few parameters in function call");
    }
    else if (fc->vals.size() > params->size())
    {
        error_print(out, fc->pos, "too many parameters in function call");
    }

    // check if parameter list matches
    // Pay attention to the difference between function paramters & arguments!
    for (int i = 0; i < fc->vals.size(); i++)
    {
        tc_type expected_type = tc_Type(params->at(i));
        tc_type actual_type = nullptr;
        switch (fc->vals[i]->kind)
        {
        case A_arithExprValKind:
            actual_type = check_ArithExpr(out, fc->vals[i]->u.arithExpr);
            break;
        case A_boolExprValKind:
            actual_type = bool_type(fc->pos);
            check_BoolExpr(out, fc->vals[i]->u.boolExpr);
            break;
        default:
            error_print(out, fc->pos, "invalid function argument(s)");
            break;
        }
        if (expected_type->isVarArrFunc != actual_type->isVarArrFunc)
        {
            error_print(
                out,
                fc->pos,
                "argument & parameter quantitative type mismatch in bool expression");
        }
        if (!comp_tc_type(expected_type, actual_type))
        {
            error_print(
                out,
                fc->vals[i]->pos,
                "argument & parameter datatype mismatch in bool expression");
        }
    }
    return;
}

void check_WhileStmt(std::ostream &out, aA_whileStmt ws)
{
    if (!ws)
        return;
    check_BoolUnit(out, ws->boolUnit);
    /* fill code here, take care of variable scope */
    scopeIn();
    for (aA_codeBlockStmt s : ws->whileStmts)
    {
        check_CodeblockStmt(out, s);
    }
    /* fill code here */
    // Exits scope
    scopeOut();
    return;
}

void check_CallStmt(std::ostream &out, aA_callStmt cs)
{
    if (!cs)
        return;
    check_FuncCall(out, cs->fnCall);
    return;
}

void check_ReturnStmt(std::ostream &out, aA_returnStmt rs)
{
    // struct aA_returnStmt_ {
    //     A_pos pos;
    //     aA_rightVal retVal;
    // };

    if (!rs)
        return;

    tc_type ret_type = fn_retType; // Get the expect function return type
    fn_returned = true;            // Indicate the return of cur. function

    if (!ret_type && !rs->retVal)
    {
        return;
    }
    else if (!ret_type && rs->retVal)
    {
        error_print(
            out,
            rs->pos,
            "return type mismatch, void function should NOT have a return value");
    }
    else if (ret_type && !rs->retVal)
    {
        error_print(
            out,
            rs->pos,
            "return type mismatch, non-void function should HAVE a return value");
    }

    tc_type derived_type = nullptr;

    // [rs->retVal]:
    // struct A_rightVal_ {
    //     A_pos pos;
    //     A_rightValType kind;
    //     union {
    //         A_arithExpr arithExpr;
    //         A_boolExpr boolExpr;
    //     } u;
    // };

    // typedef enum {
    //     A_arithExprValKind,
    //     A_boolExprValKind
    // } A_rightValType;

    switch (rs->retVal->kind)
    {
    case A_boolExprValKind:
        check_BoolExpr(out, rs->retVal->u.boolExpr);
        derived_type = bool_type(rs->pos);
        break;
    case A_arithExprValKind:
        derived_type = check_ArithExpr(out, rs->retVal->u.arithExpr);
        break;
    default:
        error_print(out, rs->pos, "unsupported RHS value type");
        break;
    }

    if ((derived_type->isVarArrFunc == 1) ^ (ret_type->isVarArrFunc == 1))
    {
        error_print(
            out,
            rs->pos,
            "return type mismatch b.c. is an array in RHS");
    }
    if (!comp_tc_type(ret_type, derived_type))
    {
        error_print(out, rs->pos, "return type mismatch");
    }

    return;
}

// =============================================================================
// ====================== A series of helper funcitons =========================
// =============================================================================

tc_type exists_global(std::string name)
{
    typeMap::const_iterator it = g_token2Type.find(name);
    if (it != g_token2Type.end())
        return it->second;
    return nullptr;
}

/**
 * Given a scope level (current scope by default), checks whether identifier exists within the scope.
 * Only checks the current scope level (does not check parent scopes)
 */
tc_type exists_within_scope(std::string name, int scope)
{
    typeMap *current_scope = local_token2Type[scope];
    typeMap::const_iterator it = current_scope->find(name);
    if (it != current_scope->end())
    {
        // Found condition
        return it->second;
    }
    return nullptr;
}

/**
 * Given a scope level (current scope by default), checks whether identifier exists in the scope (incl. parent scope(s) & the global scope)
 */
tc_type exists_in_scope(std::string name, int scope)
{
    while (scope >= 0)
    {
        tc_type local_type = exists_within_scope(name, scope--);

        // A basic that ensures the given scope level is valid
        assert(scope >= -1 && (scope + 1) <= local_token2Type.size());

        if (local_type != nullptr)
            return local_type;
    }

    // If locally scoped was not found, then check global
    tc_type g_type = exists_global(name);
    if (g_type != nullptr) {
        return g_type;
    }

    // DNE in scope
    return nullptr;
}

tc_type exists_in_funcparam(std::string name)
{
    typeMap::const_iterator it = funcparam_token2Type.find(name);
    if (it != funcparam_token2Type.end())
        return it->second;
    return nullptr;
}

/**
 * Returns a tc_type is the identifier is found and is expected to be taken
 * (availability = false)
 * If the no identifier was found but is expected to be taken, we throw an error
 */
tc_type search_identifier(std::ostream &out, std::string name, A_pos pos,
    bool availability)
{
    /**
     * "availability" indicates whether we are checking if an identifier exists
     * (1) If we are check if an identifier DNE (availability = true), that
     * means we are currently defining a new variable with identifier name
     *      - If the identifier is found -> this must be handled (duplicate name)
     *      - If the identifier is not found -> name is valid
     * (2) If we are checking if an identifier exists, that means we are checking if
     * the identifier is already declared (variable definition, assignment, etc.)
     *      - If the identifier is not found -> variable was not declared (error)
     *      - If the identifier is found -> success!
     *
     * Order of precedence for the checks:
     * 1. First check func params (local identifiers cannot have the same name)
     * 2. Check locally scoped
     * 3. Check parent scopes
     * 4. Check global
     */

    tc_type fcparam_type = exists_in_funcparam(name);

    if (fcparam_type != nullptr)
    {
        if (availability == true)
        {
            // Identifier found in function params
            char err_msg[100];
            sprintf(
                err_msg,
                // Indicate that it has something to do with the parameter
                "identifier '%s' is taken by function parameter",
                name.c_str());
            error_print(out, pos, err_msg);
            return nullptr;
        }
        else
        {
            return fcparam_type;
        }
    }

    // If the identifier is not found in the funciton parameters
    // Check current scope
    // tc_type tc_scope = exists_in_current_scope(name);
    // if (tc_scope != nullptr)
    // {
    //     if (availability == true)
    //     {
    //         // Identifier found in function params
    //         char err_msg[100];
    //         sprintf(
    //             err_msg,
    //             // Indicate that the identifier is within the local scope
    //             "identifier '%s' is taken by another local identifier",
    //             name.c_str());
    //         error_print(out, pos, err_msg);
    //         return nullptr;
    //     }
    //     else
    //     {
    //         return tc_scope;
    //     }
    // }

    // If the identifier is not found in the current scope, check other scopes
    tc_type tc_scope = exists_in_scope(name, scopeLevel);
    if (tc_scope != nullptr)
    {
        if (availability == true)
        {
            // Identifier found in function params
            char err_msg[100];
            sprintf(
                err_msg,
                // Output a more general error message
                "identifier '%s' is taken by another identifier",
                name.c_str());
            error_print(out, pos, err_msg);
            return nullptr;
        }
        else
        {
            return tc_scope;
        }
    }

    if (tc_scope == nullptr && fcparam_type == nullptr && availability == false)
    {
        char err_msg[100];
        sprintf(err_msg, "identifier '%s' is not defined", name.c_str());
        error_print(out, pos, err_msg);
    }

    // Base case
    return nullptr;
}

/**
 * Helper function for variable type derivation for untyped
 * variable. This function should be able to handle bools as well
 * Example: let i = 0;
 */
void assign_type(std::string name, tc_type t)
{
    /**
     * Take advantage of the fact that function parameters
     * must be typed, therefore, is it no need to derive them.
     *
     * Only need to check global and scope variables, and
     * derive their type (if untyped) depending on its LHS.
     */

    // Given an already derived tc_type t, find the identifer
    // and assign a type to the identifier

    if (g_token2Type.find(name) == g_token2Type.end())
    {
        int i = 0;
        for (i = scopeLevel; i >= 0; i--)
        {
            typeMap *tp_map = local_token2Type[i];
            if (tp_map->find(name) != tp_map->end())
            {
                // Once the identifier is found within the scope, assign the type to it
                (*tp_map)[name] = t;
                return;
            }
        }
        /**
         * Sanity check:
         *
         * Considering that this variable name must exist (b.c. we are already in the process of deriving its type based on the LHS expression,
         * the identifer must exist either in local_token2Type or the global tracker.
         * If its found in neither then something must have gone wrong!
         */
    }
    else
    {
        g_token2Type[name] = t;
        return;
    }
}

tc_type bool_type(A_pos pos)
{
    // Placeholder type of bool experssion
    // A bool expression evaulates to a number
    return tc_Type(
        new aA_type_{
            pos,
            A_dataType::A_nativeTypeKind,
            A_nativeType::A_intTypeKind},
        tc::tc_scalar);
}

string get_type(tc_type type)
{
    if (!type || !type->type)
    {
        // No type
        return "";
    }

    vector<string> rets;

    string type_str = "";

    /*
    typedef struct tc_type_* tc_type;
    struct tc_type_{
        aA_type type;
        uint isVarArrFunc; // 0 for scalar, 1 for array, 2 for function
    };

    typedef struct aA_type_* aA_type;
    struct aA_type_ {
        A_pos pos;
        A_dataType type;
        union {
            A_nativeType nativeType;
            string* structType;
        } u;
    };

    Therefore:
    type->type gets us aA_type_
    type->type->type gets us A_dataType
    */

    aA_type a_type = type->type;
    A_dataType dataType = type->type->type;

    switch (dataType)
    {
    // Check the datatype

    // Native variable types
    case A_dataType::A_nativeTypeKind:
        switch (type->type->u.nativeType)
        {
        case A_nativeType::A_intTypeKind:
            rets.push_back("int");
            break;
        default:
            break;
        }
        break;

    // Struct variable types
    case A_dataType::A_structTypeKind:
        if (!a_type->u.structType)
        {
            // ERROR: struct type is null
            error_print(std::cout, a_type->pos, "struct type is null");
        }
        rets.push_back(*(type->type->u.structType));
        break;
    default:
        break;
    }

    switch (type->isVarArrFunc)
    {
    case tc::tc_scalar:
        rets.push_back("scalar");
        break;
    case tc::tc_array:
        rets.push_back("array");
        break;
    case tc::tc_function:
        rets.push_back("function");
        break;
    default:
        break;
    }

    string ret = "";

    bool isFirst = true;
    for (const string s : rets)
    {
        if (isFirst)
        {
            isFirst = !isFirst;
        }
        else
        {
            ret += " ";
        }
        ret += s;
    }

    return ret;
}

void print_type(tc_type t)
{
    printf("%s\n", get_type(t).c_str());
}

/**
 * Checks if the dataType of aA_type is null
 *
 * Note: acutally this is unnecessary because datatype is not a pointer
 */
// bool is_empty_type(aA_type t) {
//     // struct aA_type_ {
//     //     A_pos pos;
//     //     A_dataType type;
//     //     union {
//     //         A_nativeType nativeType;
//     //         string* structType;
//     //     } u;
//     // };
//     return t->type == nullptr;
// }

/**
 * Checks if the tc_type t itself, or its a_type is null
 */
bool is_empty_type(tc_type t)
{
    // struct tc_type_{
    //     aA_type type;
    //     // uint isVarArrFunc; // 0 for scalar, 1 for array, 2 for function
    //     tc isVarArrFunc;
    //     uint arrayLength;
    // };
    return !t || (t != nullptr && !t->type);
}

bool is_empty_type(aA_type type) { return !type; }

/**
 * Checks if the tc_type t itself is non-null and that it has a type
 */
bool is_typed(tc_type t)
{
    return !is_empty_type(t);
}

/**
 * Tests if aA_type is a struct and checks if the struct exists (custom datastructure)
 */
void check_struct_defined(
    std::ostream &out,
    A_pos pos,
    aA_type type,
    string error_msg)
{
    if (type && type->type == A_structTypeKind)
    {
        // If type is not null and is a struct type
        // Check if struct is defined in struct2Members

        string name = *type->u.structType;
        paramMemberMap::const_iterator type_it = struct2Members.find(name);
        if (!type->u.structType || type_it == struct2Members.end())
        {
            error_print(out, pos, error_msg);
        }
    }
}

/**
 * Handling variable scope
 */

void scopeIn()
{
    local_token2Type.push_back(new typeMap);
    currScope = local_token2Type[++scopeLevel];
}

void scopeOut()
{
    if (--scopeLevel < 0)
    {
        currScope = &g_token2Type;
    }
    currScope = local_token2Type[scopeLevel];
    assert(currScope != nullptr);
    // local_token2Type.pop_back();
    if (local_token2Type.size() > scopeLevel + 1)
    {
        local_token2Type.pop_back();
    }
    assert(local_token2Type.size() == scopeLevel + 1);
}