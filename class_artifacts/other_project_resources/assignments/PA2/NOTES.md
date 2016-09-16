# Cool Manual Notes

## Lexical Structure (Page 15)
### Lexical Units
The lexical units of Cool

- integers
- type identifiers
- object identifiers
- special notation
- strings
- key-words
- and white space

## Strings
Strings are enclosed in double quotes "...". Within a string, a sequence ‘\c’ denotes the character ‘c’, with the exception of the following:

- \b backspace 
- \t tab
- \n newline 
- \f formfeed

A non-escaped newline character may not appear in a string:
"This \
is OK"
"This is not
OK"

A string may not contain EOF. A string may not contain the null (character \0). Any other character may be included in a string. Strings cannot cross file boundaries.