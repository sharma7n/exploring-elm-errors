import Html.Styled as Html
import Html.Styled.Attributes as Attributes

import Slides
import Slides.FragmentAnimation
import Slides.SlideAnimation
import Slides.Styles

image src =
    Slides.html <|
        (Html.div
            []
            [ Html.img
                [ Attributes.src src ]
                []
            ]
        )

main = 
    let
        baseOptions = Slides.slidesDefaultOptions
        options = baseOptions
    in
    Slides.app
    options
    [ Slides.md
        """
        # Exploring Elm's Compiler Error Messages
        
        ### Nik Sharma
        ### Elm in the Spring 2019
        ### https://github.com/sharma7n/exploring-elm-errors
        """
    , Slides.md
        """
        - My story of discovering a cool error message
        - An overview of all the kinds of errors in Elm
        - Examples of Elm code with various kinds of errors
        """
    , image "assets/animechicago-crest.png"
    , image "assets/advice-bot.png"
    , Slides.md
        """
        bot.animechicago.com
        """
    , image "assets/cyclic-definition.png"
    , image "assets/koichi-notsure.png"
    , image "assets/cyclic-definition.png"
    , image "assets/bad-recursion-doc.png"
    , image "assets/luffy-amazed.png"
    , Slides.md
        """
        All possible errors:
        
        - Syntax
        - Canonicalize
        - Type
        - Main
        - Pattern
        - Docs
        """
    , Slides.md
        """
        https://github.com/elm/error-message-catalog
        """
    , Slides.md
        """
        # Syntax Errors
        """
    , image "assets/type-without-definition.png"
    , image "assets/tab.png"
    , image "assets/float-in-pattern.png"
    , image "assets/end-of-file-shader.png"
    , Slides.md
        """
        Cool.
        """
    , Slides.md
        """
        Wait, what's a shader?
        """
    , image "assets/elm-glsl.png"
    , Slides.md
        """
        # Canonicalize Errors
        """
    , image "assets/duplicate-ctor.png"
    , image "assets/alias-recursive.png"
    , image "assets/recursive-decl.png"
    , Slides.md
        """
        # Type Errors
        """
    , image "assets/if.png"
    , image "assets/c-style-args.png"
    , image "assets/sub-mismatch.png"
    , Slides.md
        """
        # Main Errors
        """
    , image "assets/bad-type.png"
    , image "assets/bad-cycle.png"
    , Slides.md
        """
        # Pattern Errors
        """
    , image "assets/incomplete-pattern.png"
    , image "assets/redundant-pattern.png"
    , Slides.md
        """
        # Docs Errors
        """
    , Slides.md
        """
        Prerequisite

        1. Packages only (attributes in `elm.json`)
        2. `elm make --docs`
        """
    , image "assets/no-docs.png"
    , image "assets/implicit-exposing.png"
    , image "assets/mismatch.png"
    , image "assets/missing-annotation-or-comment.png"
    , Slides.md
        """
        # Takeaways
        """
    , Slides.md
        """
        Reading code can be insightful
        """
    , Slides.md
        """
        API design can be used to educate
        """
    , Slides.md
        """
        Thank you!
        """
    ]