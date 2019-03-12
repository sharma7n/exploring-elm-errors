# Exploring Elm's Compiler Error Messages

- What is this talk about? (1, 1)
- Who am I? (1, 2)
- A fun error story (5, 7)
    - Describing the AnimeChicago advice bot
    - The code triggering the error
    - Compiler errors for humans made what would usually have been a painful slog into a joyful teaching moment

- What are all of the possible errors? (2, 9)
    - Error custom type in the Elm compiler: https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error.hs

- How do I get all of the possible errors? (1, 10)
    - https://github.com/elm/error-message-catalog
 
- Syntax Error (3, 13): 
    - https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Syntax.hs
    - What is a syntax error?
    - Syntax error custom type
    - Code examples of syntax errors

- Canonicalize Error (3, 16): 
    - https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Canonicalize.hs
    - What is a canonicalization error?
    - Canonicalize error custom type
    - Code examples of canonicalization errors

- Type Error (3, 19): 
    - https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Type.hs
    - What is a type error?
    - Type error custom type
    - Code examples of type errors

- Main Error (3, 22): 
    - https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Main.hs
    - What is a main error?
    - Main error custom type
    - Code examples of main errors

- Pattern Error (3, 25): 
    - https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Pattern.hs
    - What is a pattern error?
    - Pattern error custom type
    - Code examples of pattern errors

- Docs Error (3, 28): 
    - https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Docs.hs
    - What is a docs error?
    - Pattern error custom type
    - Code examples of pattern errors

- Recap (2, 30)