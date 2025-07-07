HW3: Compiling LLVMlite
Overview
In this project, you will implement a non-optimizing compiler for a subset of the LLVM IR language. The source language consists of a 64-bit, simplified subset of the LLVM IR that we call LLVMlite. The target language is X86lite as defined in HW2.
 
WARNING: This project is potentially very difficult to debug and may take you a while to understand.  GET STARTED EARLY!
 
Getting Started
To get started, download the project source files. The files included in hw03.zip are briefly described below. Those marked with * (i.e., backend.ml and team.txt) are the only ones you should need to modify while completing this assignment.

README            - help for the main test harness
Makefile          - basic make support for invoking ocamlbuild

util/assert.ml(i) - the assertion framework
util/platform.ml  - OS platform-specific compilation support

/x86/x86.ml(i)    - the X86lite instruction representation from HW2

ll/ll.ml          - the abstract syntax for LLVMlite
ll/lllexer.mll    - lexer for LLVMlite syntax
ll/llparser.mly   - parser generator for LLVMlite syntax
ll/llinterp.ml    - reference interpreter for the LLVMlite semantics

main.ml           - command-line interface
driver.ml         - invoking the compiler pipeline

llprograms/*.ll   - example .ll programs used in testing
cinterop.c        - c code for testing interoperability

gradedtests.ml    - graded test cases that we provide
studenttests.ml   - where your additional test cases should go

*backend.ml       - where you implement the LLVMlite to X86 compiler
*team.txt         - where you specify your team members
Note: You'll need to have Menhir installed in order to build the LLVMlite parser. The easiest way to do this is to use OPAM via the command opam install menhir.

Note: You'll need clang installed on your system. Test whether it is installed on your system by running clang --version. Note that, we recommend using clang 9.0.0 in the assignments ( clang 9.x should generally work). Please check the toolchain page if you have any problem with clang.

Note: We strongly recommend you develop this assignment on the docker (or virtual machine) provided in toolchain. It contains all the needed tools and will save lots of your time in solving environment issues.

 

 
Preliminary Steps
Skim through the rest of this web page to get a sense of what it contains.
Familiarize yourself with the information in the README, which explains the ways that you can run your compiler for testing purposes.
Then take a look at driver.ml, particularly the code related to process_ll_file to see how the backend code fits into the overall compilation pipeline.
Then start working through backend.ml, following the instructions below.

 
LLVM Lite Specification
The source language for this 'backend' part of the full compiler is a subset of the LLVM IR called LLVM Lite. You may find the LLVM Language Reference to be a useful resource for this project, though we are only concerned with a small portion of the full LLVM feature set.

The LLVM Lite Specification describes the behavior of LLVM programs in terms of abstract semantics that are not target specific. These semantics are intended to be faithful to the LLVM Language Reference.

Implementing the Compiler
The code we provide in backend.ml is a minimal skeleton of the basic structure of the compiler. To a first approximation, for each part foo of the abstract syntax (such as prog or fdecl), there is a corresponding compile_foo function (i.e. compile_prog or compile_fdecl). Most of these definitions have been left unimplemented (and a few have been left out). Your job is to complete this translation. Our reference solution is well under 350 lines of documented code, so if your implementation is significantly longer than this, you may wish to seek help.

The file backend.ml contains additional hints and explanations about the compilation strategy that we suggest you use.

We suggest that you stage the development of your compiler like this:

First, get a minimal implementation of compile_fdecl working so that you can compile functions with empty bodies but varying numbers of input parameters. To do this, you'll need to understand the System V AMD64 ABI calling conventions (see the lecture slides and Wikipedia for an explanation), then understand the notion of a layout and complete the arg_loc function. At this point, the X86 code you generate won't be able to run because the code for the compiled function does not exit properly. (But you can still look at the generated assembly code to see whether it looks reasonable.)
Next, implement enough of the compile_terminator function to handle (void) functions that return no results. Similarly, implement enough of compile_block to handle blocks with no instructions. At this point, your compiler should be able to generate working code for an LLVM function like that found in returnvoid.ll:
 
    define void @main(i64 %argc, i8** %argv) {
      ret void
    }
    
(Note, this isn't part of the test suite, since the value "returned" to the shell when this program runs isn't well defined.)

Understand the notion of the ctxt type and develop a strategy for storing uid locals. See the comments in the backend.ml file. Implement the compile_operand function.
Implement the Binop case for compile_insn (which, if you follow the suggested method of compiling locals, will use compile_operand).
At this point, you probably want to revisit compile_fdecl and compile_block to adjust them to deal properly with contexts and non-empty control-flow graphs / blocks.
Next, go back and implement the rest of the cases for compile_terminator. At this point, your compiler should be able to handle functions that return i64 values and that contain simple arithmetic and direct jumps.
Implement the translation of Icmp in compile_insn, followed by Alloca, Load, and Store.
Next tackle the Call instruction. The code you generate must properly handle the System V AMD64 ABI calling conventions (but note that we care only about 64-bit values). After successfully completing this step, your compiler should be able to handle the recursive factorial function definition.
Breathe a sigh of relief at how easy it is to implement Bitcast, because the target language is untyped.
Finally, gather your courage, and implement the Gep (getelementptr) instruction.
 
Testing and Debugging Strategies
Testing and debugging a compiler is quite difficult. There are many correct potential translations of a given source program, and there are many incidental changes (such as the choice of label names) that do not affect the semantics of the generated code. It is also difficult to test parts of the translation independently, since simple inputs may depend on almost all of the compilation pipeline.

The test harness provided by main.ml gives several ways to assess your code. See the README file for a full description of the flags.

We have provided a (minimally-featured) parser for LLVMlite code. It is sufficiently complete to parse the examples in the llprograms directory, and we expect you to create additional test cases yourself. For examples of how to use the test driver infrastructure, see the gradedtests.ml file.

You can run the tests in the gradedtests.ml file by running make test.

You may find it helpful to run the LLVMlite code using our reference interpreter (with the --interpret-ll flag).

You may also find it helpful to run the LLVMlite code by compiling it via clang (with the --clang flag).

By running make test-full, you will additionally run the tests in the ./sharedtests directory, which are complex end-to-end tests. The tests in the ./sharedtests directory are sourced from students personal tests from the last years and do not directly affect your grade, but they can help you ensure your compiler is free of bugs. Be cautious though, some of them might not work with the reference interpreter and/or clang.

Note that it is not very useful to directly compare the .s files produced by your compiler to those produced by clang, but the behavior of the two versions for the same inputs should be the same.