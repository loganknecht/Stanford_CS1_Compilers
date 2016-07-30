# Coursera Compilers
## Section 01 - Introduction
### Part 01
* Introduction - Welcome to class

### Part 02
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
    * [   L   ][   P   ][S][   O   ][   CG   ]
    * Not much effort was put in for the semantic analyis phase
  * Modern (2016)
    * [L][P][   S   ][       O       ][CG]
    * Lexing, Parsing, and Code Generation are understood very well
    * Semantic Analysis and Optimization are the main efforts
    
### Part 03
