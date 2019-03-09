# Exploring Elm's Compiler Error Messages

- What is this talk about?
- Who am I?
- A fun error story
    - Describing the AnimeChicago advice bot
    - The code triggering the error
    - Compiler errors for humans made what would usually have been a painful slog into a joyful teaching moment

- What are all of the possible errors?
    - Error custom type in the Elm compiler: https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error.hs

- Syntax Error: https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Syntax.hs
    - What is a syntax error?

- Canonicalize Error: https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Canonicalize.hs
    - What is a canonicalization error?

- Type Error: https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Type.hs
    - What is a type error?

- Main Error: https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Main.hs
    - What is a main error?

- Pattern Error: https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Pattern.hs
    - What is a pattern error?

- Docs Error: https://github.com/elm/compiler/blob/d09b95aac107291d50e8ee391d3288fc18c3891a/compiler/src/Reporting/Error/Docs.hs
    - What is a docs error?

- How do I get all of the possible errors?
    - https://github.com/elm/error-message-catalog

- How can I write better code?
    - Add type annotations