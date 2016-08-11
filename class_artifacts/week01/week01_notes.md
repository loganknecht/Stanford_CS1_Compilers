# Coursera Compilers
## Section 01 - Introduction
### Part 01 - Introduction
* Introduction - Welcome to class
* Formula Transformation (a.k.a. FORTRAN)
 * ~mind blown~

### Part 02 - Structure of a Compiler
* A compiler has 5 major phases - Using the English language as an example these phases could be described as such.
  * Lexical Analysis
    * Recognize the words
    * Divides program text into words that represent the each piece atomically (a.k.a. tokens)
      * if x == y then z = 1;  else z = 2;
        * Each word and operator is a token, this includes spaces
  * Parsing
    * Diagramming sentences
    * This breaks a sentence into its respective grammar parts
      * subject, verb, adjective, etc
  * Semantic Analysis
    * This is an effort to understand the meaning of the sentence
  * Optimization
    * Does not really have a good counterpart in English
    * Editing is pretty close to the program optimization
      * Some type of tweaking is performed to satisfy some goal: speed, space, network messages, syntax etc.
    * Code example
      * x = y * 0 -> x = 0
        * This is a bad optimization rule
        * Only applies to integers
        * Is invalid for floating point
          * the special number in the IEEE standard not a number(NaN) multiplied by 0 is still NaN
  * Code Generation (a.k.a Code Gen)
    * Conversion to some other language
      * Typically into assembly code
      * Also includes transpilers
    * English Example
      * Translating from English to Japanese
* Throughout history of compilers there has been a different emphasis on each one of these major phases
  * Using the first letter of each major phase we can demonstrate it as such
  * "In the old days" 
    * [&nbsp;&nbsp;&nbsp;L&nbsp;&nbsp;&nbsp;][&nbsp;&nbsp;&nbsp;P&nbsp;&nbsp;&nbsp;][S][&nbsp;&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;][&nbsp;&nbsp;&nbsp;CG&nbsp;&nbsp;]
    * Not much effort was put in for the semantic analyis phase
  * Modern (2016)
    * [L][P][&nbsp;&nbsp;&nbsp;S&nbsp;&nbsp;&nbsp;][&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;][CG]
    * Lexing, Parsing, and Code Generation are understood very well
    * Semantic Analysis and Optimization are the main efforts
    
### Part 03 - The Economy of Programming Languages
* Why are there so many programming languages?
  * There are many different domains each with different requirements 
    * Scientific Computing  
      * Requires/Values
        * floating point support
        * array support
        * array operations
        * parallelism for performance
        * etc
      * Language Example
        * FORTRAN
    * Business Applications
      * Requires/Values
        * persistence
        * report generation
        * data analysis
      * Language Example
        * SQL
    * Systems Programming
      * Requires/Values
        * control of resources
        * real-time constraints
      * Language Example
        * C/C++
* Why are there new programming languages?
  * General observations
    * Widely used languages are slow to change
      * Affects programmers who are used to the tool
      * Requires more training
      * Hard to change built-in constructs
    * Easy to start a new language
      * Basically the opposite of widely used languages.
    * Languages are used to fill voids in technology
      * Done in order to make it so that productivity enabled
    * New languages tend to look like old languages
      * Economic benefit of reducing training costs
        * Easy to go from C++ to Java
        * Hard to go from C++ to Haskell :(
  * What is a good programming language
    * There is no universally accepted metric for lanuage design
      * Very subjective process
    * Inflammatory Statment
      * "A good language is one people use"
        * Not good because people use sub-optimal solutions all the time
        * Is visual basic the best language? Nah.

### Summary
* Appliation domains have conflicting needs
  * It is hard to design a one-size-fits-all solution
* Programmer training is the dominant cost for a programming language
  * Often easier to design a new language, rather than try to move an entire communicty of programmers to those new applications

## Section 02 - Classroom Object Oriented Language (COOL)
### Part 02
* Classroom Object Oriented Language (COOL)
  * Program language with the specific goal of compiler writing
  * Compiles to cool programs
  * General Features
    * Abstraction 
    * Static typing
    * Reuse (Inheritance)
    * Memory management
  * Compiles to MIPS assembly language
  * Example program - example.cl
```cool
// Example 01
class Main (
  i : IO <- new IO;
  main():Int { { i.out_string("Hello World!\n"); 1; } };
);

// Example 02
class Main (
  main():Object { (new IO).out_string("Hello World!\n") };
);

// Example 03
class Main inhertis IO (
  main():Object { out_string("Hello World!\n") };
);
```
  * Compile using coolc
```bash
coolc example.cl
```

### Part 03

- See [cool_code] for code samples
- Let Expressions
  - Every declaration except for the final assignment should be comma terminated
  - Allows the declarations of variables to be bound
  - Scoping allows multiple let declarations use preceding let decorations 
  - Example
      - hello has no access to world and it has no acces to newline
      - world has and has access to hello, but it has no access to newline 
      - newline has access to hello and it has access to world
  ```cool
  let hello: String <- "Hello ",
      world: String <- "World!",
      newline: String <- "\n"
  in
      out_string(hello.concat(world.concat(newline)))
  ```
- Returning a string type signature from an assignment
    ```cool
    case item of
        i: Int => i2a(1);
        s: String => s;
        o: Object => { abort(); ""; };
    esac
    ```
- Compiling and Running Examples
    - coolc section02part03example01.cl && spim section02part03example01.s
    - coolc section02part03example02.cl && spim section02part03example02.s
    - coolc section02part03example03.cl ~/cool/examples/atoi.cl && spim section02part03example03.s
    - coolc section02part03example04.cl ~/cool/examples/atoi.cl && spim section02part03example04.s




[cool_code]: cool_code
