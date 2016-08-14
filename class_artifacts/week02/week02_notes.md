# Stanford Lagunita CS1 Compilers - Week 02 - Lexical Analysis and Finite Automata
## Section 03
### Part 01 - Lexical Analysis

- Lexical Analysis focuses on two things
    - Recognizing substrings corresponding to tokens
        - Lexems are always strings
            - If the sting is "42", it'll be recognized as a number lexeme/token
    - Identify the token class of each lexeme
- Output of a lexical analyzer
    - Token class
        - This is what the lexeme will represent in memory
    - Lexeme
    - Together both the token and the lexeme count as a "token"

#### Example
```
x=0;\n\twhile (x < 10) { \n \tx++; \n } 

[identifier, "x"][equalsign, "="][number, "0"][semicolon, ";"][whitespace, "\n\t"][keyword, "while"][whitespace, " "][leftparenthesis, "("][identifier, "x"][whitespace, " "][leftcaret, "<"][whitespace, " "][number, "10"][rightparenthesis, ")"][whitespace, " "][leftbracket, "{"][whitespace, " \n \t"][identifier, "x"][doubleplus, "++"][semicolon, ";"][whitespace, " \n "][rightbracket, "}"]

10) { \n \tx++; \n } 
```

- 7 Whitespace
    - The answer says it's 9, but I don't see that?
- 1 Keyword
- 3 Identifiers
- 2 Numbers
- 9 Others