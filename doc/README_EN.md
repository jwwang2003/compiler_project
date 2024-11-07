# Experiment 2: Type Check & Deduction

## Objective

The objective of Assignment 2 is to perform type checking and inference on the AST provided in Assignment 1. If an error is detected, output the location and description of the error.

## Environment

The environment for this experiment is the same as in Experiment 1. __You need to copy your `parser.yacc` and `lexer.lex` files from Experiment 1 to this directory__, and then run

```
make
```

in this directory to compile all files and test all test cases. If the compilation is successful and outputs `TypeCheck Passed`, it means your environment is ready.

## Getting Started

In `compiler.cpp`, after generating the AST, `check_Prog` is called to perform type checking. In the `check_Prog` function, you have access to the root of the entire AST. The task for this experiment is to __complete the `TypeCheck.h` and `TypeCheck.cpp` files to implement type checking__; these files already contain some data structures and functions and provide a general framework for type checking. You may also define additional data structures as needed. If a type error is detected, use the `error_print` function to output the error location and reason, which is defined in `TypeCheck.cpp`.

The `PrintTeaplaAst.cpp` file from Experiment 1 can help you analyze the program more intuitively, allowing you to locate potential issues and improve your coding and debugging efficiency.

For type inference, it is recommended to assign the inferred types back to the AST data structure to facilitate continued use of the current code in future projects. You can design additional data structures or function definitions as needed.

## Type Checking Rules

Below are the type-checking rules followed in the test cases for this experiment. Anything not mentioned in the rules can be treated as undefined behavior, and you are free to implement it as you see fit. These will not affect the grading.

### Types
1. The only primitive type is `int`. Since we implemented support for boolean expressions in Experiment 1, there is also a derived `bool` type. However, `bool` will not be used as a variable type, i.e.,
   ```
   let a:bool = 2 > 1;
   ```
   will not appear.

2. Other types include only user-defined `struct` types, e.g.,
   ```
   struct MyStruct{
       int a;
       int b;
   }
   ```

### Variables
1. Type inference upon declaration. The TeaPL syntax implemented in Experiment 1 allows omitting the type when declaring a variable; the variable's type is determined by its first assignment. For example:
   ```
   let a = 5;
   ```
   and
   ```
   let a;
   let b:int = 10;
   a = b;
   ```
   should infer that the type of variable `a` is `int`.

2. Assignment. For all assignment statements, the types of the left-hand side and right-hand side must be __strictly identical__. For instance:
   ```
   let a[10]:int;
   a = 10;
   ```
   should produce an error. In the C language, this might not produce an error, as C has many implicit type conversion rules and allows direct memory access via addresses. However, for this experiment, we require the types of the left and right sides of an assignment to be strictly identical.
   
   The length of an array is not included in the definition of "strictly identical," so:
   ```
   let a[2]:int = {0, 1};
   let b[3]:int = {0, 1, 2};
   a = b;
   ```
   is valid. However, when initializing an array with a list, the length of the list should match the array declaration, e.g.,
   ```
   let a[2]:int = {0, 1, 2};
   ```
   should produce an error. Each entry in the list must also match the array's type.

   TeaPL syntax does not support assigning to an already declared array with a list, only list initialization during declaration. Therefore, array assignment does not need to consider lists.

   For structs, struct members must have explicitly declared types (already implemented in Experiment 1's syntax). However, type inference is allowed for assignments of the entire struct, e.g.:
   ```
   let a : MyStruct;
   let b = a;
   ```
   should infer that `b` is also of type `MyStruct`.

### Functions
1. Function overloading is not supported, e.g.,
   ```
   fn foo(a:int, b:int, c:int)->int{
       ret b - a + c;
   }

   fn foo(a:int, b:int)->int{
       ret a + b;
   }
   ```

2. A function's declaration and definition must be consistent, e.g.,
   ```
   fn foo(a:int, b:int)->int;
   fn foo(a:int)->int{
       ...
   }
   ```
   should produce an error. Parameter names in the parameter list may differ.

3. The `return` statement in a function should match the function's declared return type.
   ```
   fn foo(a:int)->MyStruct{
       ret 2 * a;
   }
   ```
   should produce an error. Test cases with functions that lack a return type will not be present, so you may choose how to implement this.

### Scope
1. The test unit for this experiment is the file, so you do not need to consider cross-file scoping issues. The file itself is global, while functions, `if`/`while` code blocks, etc., are local. Variables declared directly in the file are global variables; TeaPL syntax only allows function declarations at the global level, so you do not need to consider declaring functions in sub-scopes.

2. Functions and global variables are accessible in any scope, regardless of where they are declared. Therefore, the following code should pass type checking:
   ```
   fn foo1(a:int, b:int)->int{
       ret foo2(b, a);
   }

   fn foo2(a:int, b:int)->int{
       ret a * x + b;
   }

   let x:int = 25;
   ```

3. If a global variable references another global variable, the referenced global variable must be declared before it is referenced. For example:
   ```
   let x:int = a + 5;
   let a:int = 5;
   ```
   should produce an undefined variable error. Global variable declarations will not depend on functions.

4. A function's parameters or local variables cannot have the same name as a global variable, e.g.,
   ```
   let a : MyStruct;
   fn foo(a : int)->int{
       ret 2 * a;
   }
   ```
   and
   ```
   let a:int = 203;
   let b:int = 713;

   fn foo(a:int)->int{
       let b:int = 10;
       ret a + b;
   }
   ```
   should both produce errors.

5. Local variables cannot share the same name as external local variables, e.g.,
   ```
   fn foo(a:int)->int{
       let i:int = 10;
       if (a > 0){
           let i:int = 10;
       }
       ret i + a;
   }
   ```
   and
   ```
   fn foo(a:int)->int{
       let a:int = 10;
       ret a * a;
   }
   ```
   should produce errors. However, once a scope is exited, its local variable names can be reused, e.g.,
   ```
   fn foo(a:int)->int{
       if (a > 0){
           let i = 0;
           while (i < a){
               ...
           }
       }

       if (a < 0){
           let i = 0;
           while (i > a){
               ...
           }
       }
   }
   ```
   should pass type checking.

### Testing

Test cases are located in the `tests/` folder, with reference outputs provided at the end of each file in comments. Run `make` in the project directory to test all cases.

### Submission and Grading

Submit a compressed package named with your student ID, e.g., `22110240012.zip`. Grading will primarily consider the location (position) of detected type errors; the specific error content will only be used as a reference. Additionally, during the experiment evaluation, questions will be asked about the code to ensure a full understanding of how it works. This will also be a factor in grading.