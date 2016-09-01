# Stanford Lagunita CS1 Compilers - Week 02 - Lexical Analysis and Finite Automata
## Section 03
### Part 01 - Lexical Analysis

- Lexical Analysis focuses on two things
    - Recognizing substrings corresponding to tokens
        - These are called lexemes
        - Lexems are always strings
            - If the string is "42", it'll be recognized as a number lexeme/token
    - Identify the token class of each lexeme
- Output of a lexical analyzer
    - Token class
        - This is what the lexeme will represent in memory
    - Lexeme
    - Together both the token and the lexeme count as a "token"

#### Example

```
x=0;\n\twhile (x < 10) { \n \tx++; \n } 

[identifier, "x"][equal_sign, "="][number, "0"][semicolon, ";"][whitespace, "\n\t"][keyword, "while"][whitespace, " "][left_parenthesis, "("][identifier, "x"][whitespace, " "][left_caret, "<"][whitespace, " "][number, "10"][right_parenthesis, ")"][whitespace, " "][left_bracket, "{"][whitespace, " \n \t"][identifier, "x"][double_plus, "++"][semicolon, ";"][whitespace, " \n "][right_bracket, "}"]

10) { \n \tx++; \n } 
```

- 7 Whitespace
    - The answer says it's 9, but I don't see that?
- 1 Keyword
- 3 Identifiers
- 2 Numbers
- 9 Others

### Part 02 - Lexical Analysis Examples

- The goal of lexical analysis is to partition the input string into lexemes
    - This is implemented by reading left-to-right recognizing one token at a time
- Lookaheads may be required to determine where one token ends and the next token begins 
   - A look ahead is the inspection of a character that is to follow the current character being inspected
   - Look aheads with ALWAYS be needed
   - Look aheads should be minimized, as it will reduce the complixity of the lexical analysis step
- Example Programming Languages Rules
    - FORTRAN (Formula Translation)
        - White space is insignifcant
            - Rule exists because the punch cards used to program were notorious for inserting random spaces
            - `VAR 1 == VA R1`
    - PL/I (Programming Language 1)
        - Keywords are not reserved
            - `IF ELSE THEN THEN = ELSE; ELSE ELSE = THEN`
            - `[keyword, "IF"][variable_name, "ELSE"][keyword, "THEN"][variable_name, "THEN = ELSE;"][keyword, "ELSE"][variable_name, "ELSE = THEN"]`
    - C++
        - template syntax
            - `Foo<Bar>`
        - stream syntax
            - `cin >> var;`
        - The problem arises in nested templates
            -  `Foo<Bar<Bazz>>`
                - Are the two right carets at the end a stream syntax command or a nested template?
                - To make it so that it's clear that it's a template it would be to place a white space between the two carrets
                    -  `Foo<Bar<Bazz> >`


### Part 03 - Regular Languages

-Review
    - The lexical structure of a programming language is a set of token classes.
        - And each one of the token classes consists of some set of strings.
- Regular Expressions are used to define a regular language.
- Regular expressions are syntax (that's the expression that we write down), and it
denotes a set of strings which is the regular language and that's the meaning of
the regular expression. 
- Regular Expression Base Cases
    - 'c' is an expression. 
        - Represents a language of only the character 'c'
            - 'c' = {"c"}
    - Εε  Epsilon
        - This is another basic building block of regular expressions.
        - Represents a language that has a single string - the empty string.
            - ε = {""}
- Regular Expression Compounds
    - These are use to build other regular expressions from base regular expressions.
    - Union
        - A + B = { a | a ∈ A } ∪ { b | b ∈ B}
        - A plus B which corresponds to the union of the languages A and B
        - a such that a is in the language of A
        - b such that b is in the language of B
    - Concatenation
        - AB = { ab | a ∈ A ^ b ∈ B }
        - When performed this is the cross product of the two languages being concatenated
        - The concatenation of A and B is equal to
            - a is drawn from the language of A
            - b is drawn from the language of B
            - Both are combined
    - Iteration
        - A* = while i > = 0 ∪ A^i
        - Called the Kleene Closure
- Regular expressions are defined with some respect to an alphabet denoted as sigma (∑)
    - Regular expressions have 5 allowed operations over an alphabet, the 2 base cases plus the 3 compound operations
```
    // R is the regular expression of either the empty set, a single character, or regular compound expressions
    R = ∈
      | 'c'
      | R + R
      | RR
      | R*
    Where c ∈ ∑
```
- ∑* (sigma star) - the strings of the alphabet integrated as many times as needed

### Part 04 - Formal Languages

- Definition
    - Let ∑ be a set of character (an alphabet)
        -  A language over ∑ is a set of strings of characters selected from ∑
- Meaning function
    - L maps syntax to semantics
```
L(e) = M
// e = regular expression
// M = set of strings
// e is mapped to M
```

```
'c' = {"c"}
ε = {""}
A + B = { a | a ∈ A } ∪ { b | b ∈ B}
AB = { ab | a ∈ A ^ b ∈ B }
A* = while i > = 0 ∪ A^i

// values on the left side of the = sign are an expression
// values on the right side of the = sign are a set
```


# General Notes
## DFA
- DFAs must have 
    - A finite set of states
    - No ϵ-moves
    - One transition per input per state

## NFA
- NFAs must have 
    - Every DFA is also an NFA
    - A finite set of states