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


