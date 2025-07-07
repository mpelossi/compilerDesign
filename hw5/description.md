HW5: Oat v.2 Compiler 
 
Getting Started
To get started, download the project source files and make sure you can compile main.native or main.byte. The files included in hw05.zip are briefly described below. Those marked with * are the only ones you should need to modify while completing this assignment. 

Note: As with HW4, you'll need Menhir for the parser. We recommend that you use the provided Makefile. You'll also need to add the nums and unix libraries to compile this project. If you use OCamlBuild, you can compile the project from the command line by referring to the ocamlbuild -Is ... command used in Makefile.

util/assert.ml(i) - the assertion framework
util/platform.ml  - platform-specific compilation support
util/range.ml(i)  - range datatype for error messages
ll/ll.ml          - the abstract syntax for LLVMlite
ll/lllib.ml       - name generation and pretty-printing for LLVMlite
ll/lllexer.mll    - lexer for LLVMlite syntax
ll/llparser.mly   - parser generator for LLVMlite syntax
ll/llinterp.ml    - reference interpreter for the LLVMlite semantics
/x86/x86.ml       - the X86lite language used as a target
README            - help with the main test harness
Makefile          - basic make support for invoking ocamlbuild
oatprograms/*.oat  - example hw4 programs used in testing
hw5programs/*.oat - example hw5 programs used in testing

main.ml           - main test harness
driver.ml         - utilities for invoking the compiler
backend.ml        - sample solution to HW3 
astlib.ml         - pretty printing 
lexer.mll         - oat lexer
parser.mly        - oat parser

runtime.c         - oat runtime library

studenttests.ml   - where your own test cases should go
gradedtests.ml    - graded test cases that we provide  

ast.ml            - oat abstract syntax 
*frontend.ml      - oat frontend  [including most of a solution to HW4]
*typechecker.ml   - oat typechecker
tctxt.ml          - typechecking context data structure
*team.txt - student ids and names of your team
 
Overview
Implement a compiler typechecker for an extended version of Oat that has boolean, int, string, array, struct and function pointer types as well as "possibly null" and "definitely not null" references. Your compiler will now accept source files of the form


  struct Color {
    int red;
    int green;
    int blue;
    (Color) -> Color f
  }

  Color rot(Color c1) {
    var c2 = new Color{ red = c1.green; green = c1.blue; blue = c1.red; f = c1.f };
    return c2;
  }

  global c = new Color { red = 10; green = 20; blue = 30 ; f = rot};

  int program (int argc, string[] argv) {
    return c.f(c).red;
  }
and will produce an executable (by default named a.out) that, when linked against runtime.c and then executed produces the resulting output:


  ./a.out
  20
Hint: For new examples of Oat code, see the files in /hw5programs. 
The Oat Language
This version of Oat supports all of the features from HW4 but, in addition, supports structs and function pointers, and a type system that makes a distinction between "possibly null" and "definitely not null" references.

Oat supports multiple base-types of data: int, bool, and string, as well as arrays of such data. The Oat language is large enough that it is simpler to give the specification of its type system using inference rules than to use English prose. The Oat v.2 language specification contains a definition of the language syntax and a collection of inference rules that define Oat type checking.

See the file ast.ml for the OCaml representation of the abstract syntax -- the type typ of types is defined there, along with representations of expressions, statements, blocks, function declarations, etc. You should familiarize yourself with the correspondence between the OCaml representation and the notation used in the specification. The astlib module defines some helper functions for printing Oat programs and abstract syntax.

The abstract syntax now has support for structs, function pointers, and new types. We have already provided the parser for you. We have slightly tweaked the syntax for global expressions to require the new keyword for array and struct literals (as is required for local definitions). This change simply makes the grammar a bit more uniform, and the typechecking rules for globals and locals can be identical.

New Features
Structs:

Oat struct types are declared by using the struct keyword at the top level. For example the following program declares a new struct type named Color with three fields. (Note: there is no trailing semicolon on the last struct field.)

struct Color {
  int red;
  int green;
  int blue
}

int program (int argc, string[] argv) {
  var garr = new Color { green = 4; red = 3; blue = 5 }; 
  garr.red = 17;
  return garr.red + garr.green;
}
Struct values can be created by using the new keyword followed by the name of the struct type and a record of field initializers. The order of the fields in the initializers does not have to match the order of the fields as declared, but all of the fields must be present and have the correct type.

Struct values are represented internally as pointers to heap-allocated blocks of memory. This means that structs, like strings and arrays, are reference values for the purposes of compilation. Struct fields are also mutable. As shown in the sample program above, you can update the value of a struct.

Function Pointers: 

This version of Oat supports function pointers as first-class values. This means that the name of a top-level declared function can itself be used as a value. For example, the following program declares a top-level function inc of type (int) -> int and passes it as an argument to another function named call:

int call((int) -> int f, int arg) {
  return f(arg);
}

int inc(int x) { return x + 1; }

int program(int argc, string[] argv) {
  return call(inc, 3);
}
Function types are written (t1, .., tn) -> tret and, as illustrated above, function identifiers act as values of the corresponding type. Note that such function identifiers, unlike global variables do not denote storage space, and so cannot be used as the left-hand side of any assignment statement. These function pointers are not true closures, since they cannot capture variables from a local scope.

Built-in Functions:
The built-in functions, whose types are given below, can also be passed as function-pointers:

string_of_array : (int[]) -> string
Assumes each int of the array is the representation of an ASCII character.
array_of_string : (string) -> int[]
print_string : (string) -> unit
print_int : (int) -> unit
print_bool : (bool) -> unit
These built-in operations, along with some internal C-functions used by the Oat runtime are implemented in runtime.c.


Possibly null vs. Definitely Not Null References:

The Oat type system makes a distinction between possibly null reference types (which are not statically known to be different from null) and definitely not-null reference types. These features are illustrated in the following code from the ifq3.oat file:

int sum(int[]? arr) {
    var z = 0;
    if?(int[] a = arr) {
      for(var i = 0; i<length(a); i = i + 1;) {
        z = z + a[i];
      }
    }
    return z;
}

int program (int argc, string[] argv) {
    var x = 0;
    x = x + sum(new int[]{1,2,3});
    x = x + sum(int[] null);
    return x;
}
Here, the sum function takes a possibly null array reference. Possibly null arrays cannot directly be treated as arrays. Instead, the programmer has to insert the appropriate null check using the if? statement, which performs the null check and, if it is successful, creates an alias to the checked value for use as a definitely not null pointer. The rule for typechecking if? works for any possibly null reference types.

Note: The variable introduced by if? is still mutable, so the frontend will have to allocate storage space just as for any other local variable introduced by var.
 
Array Initializers:
Once we decide to have definitely not-null types, we need a convenient way to initialize arrays of reference types (so that we can ensure that the entries are not null). We thus add support for built-in initializers, that work as shown below:

    var matrix = new int[][3]{i -> new int[3]{j -> i * j}}
This code declares a 3x3 matrix represented as an array of int arrays. The entry matrix[i][j] is initialized to be i * j. The initializer array syntax is of the general form: new t[e1]{id -> e2}, where e1 is an integer determining the size of the array, id names the index, and the initializer expression e2 computes the initial value at each index. This initializer code is semantically equivalent to allocating an array followed by immediately initializing each element:

   var a = new int[e1];
   for(var id = 0; id < length(a); id = id + 1;) {
      a[x] = e2;
   }
Note that e2 can mention the loop index id. See the typechecking rules for the details about scoping and typechecking.

For-loops:  You only need to provide support for the full for-loop variants. 

Statements like:

- for (vdecls; ; stmt;)
-  for (vdecls; exp; ;)
- for (vdecls; ; ;)

do not need to be supported.
 

Task I: Type Checking
The main task of this project is to implement a typechecker for the Oat language, which will put enough restrictions on its code to ensure type safety.

The typing rules describing the intended behavior of the typechecker are given in the accompanying Oat v.2 Language Specification (attached pdf file). Use that, and the notes in typechecker.ml to get started. We suggest that you tackle this part of the project in this order:

Try to read over the typing rules and get a sense of how the notion of context used there matches up with the implementation in tctxt.ml.
Complete the implementations of subtype and typecheck_ty (and their mutually recursive companions), to remind yourself how the typechecking rules line up with the code that implements them. It might be good to write a few unit tests for these functions to confirm your expectations.
Think about the intended behavior of the typechecker for expressions, and work out a few of the easier cases. We have given you helper functions for typechecking the primitive operations.
Next tackle the context-building functions, which create the correct typing context for later typechecking.
Take an initial stab at typecheck_fdecl. We suggest that you introduce a helper function called typecheck_block, which will be used for function declarations (and else where)
Working backwards through the file, work on typechecking statements, which will rely heavily on typechecking expressions. Make sure you understand how the expected return type information and the behavior type of the statement are propagated through this part of hte code.
 
Task II: Frontend Compilation
We have provided a mostly complete sample implementation of the frontend of the compiler (corresponding to our solution to HW4). Your task for this part of the project is to add support for structures and function pointers.

If you feel very strongly that you would be more comfortable using your own frontend from HW4 as the starting point for this part of the project, you may, but consult the course staff first. A few things have likely changed between HW4 and HW5, so there might be more work than you expect if you decide to take this route.
 
Functions Pointers: Due to the way that the "plumbing" for function pointer values has changed, you might want to familiarize yourself with the cmp_function_ctxt and the way we implement the Id id case for the expression compilation. There is nothing for you to do here.


Arrays: There are only a few places where the code must be modified, each of which is marked as a ARRAY TASK in the comments. You'll need to add code to handle the length expression (for which you might want to recall the array representation from the HW4 instructions). You'll also have to implement the array initializers.

Structs: There are only a few places where the code must be modified, each of which is marked as a STRUCT TASK in the comments. Struct compilation is (broadly) similar to how we handle arrays. The main difference is that you need to use the structure information to look up the field index for the struct representation (rather than computing an integer directly). Follow the STRUCT TASK breadcrumbs left in the frontend and the comments there.

Checked Cast: To implement the if? statement, you'll need to generate code that does a null-pointer check. Since this construct introduces a variable into scope (for the 'notnull' branch), you'll have to handle the context and allocate storage space...

Testing and Debugging Strategies
The test harness provided by main.ml gives several ways to assess your code. See the README file for a full description of the flags.
Similarly to previous assignments, running make test-full will run a larger test suite, composed of additional end-to-end tests. These tests do not affect your grade, but can help you feel more confident in your solution being correct.

As with the previous project, you will find it particularly helpful to run the LLVMlite code by compiling it via clang (with the --clang flag) or testing with the llc backend. That is because our backend implementation from HW3 (which we have provided for your reference) does not typecheck the .ll code that it compiles. Using clang will help you catch errors in the generated ll output.

 