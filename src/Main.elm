import Html.Styled as Html
import Html.Styled.Attributes as Attributes

import Slides
import Slides.FragmentAnimation
import Slides.SlideAnimation
import Slides.Styles

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
        ### https://github.com/sharma7n/exporing-elm-errors
        """
    , Slides.md
        """
        - My story of discovering a cool error message
        - An overview of all the kinds of errors in Elm
        - Examples of Elm code with various kinds of errors
        """
    , Slides.html <|
        (Html.div
            []
            [ Html.img 
                [ Attributes.src "assets/animechicago-crest.png"
                ] 
                []
            ])
    , Slides.html <|
        (Html.div
            []
            [ Html.img
                [ Attributes.src "assets/advice-bot.png"
                ]
                []
            ])
    , Slides.md
        """
        bot.animechicago.com
        """
    , Slides.html <|
        (Html.div
            []
            [ Html.img
                [ Attributes.src "assets/cyclic-definition.png"
                ]
                []
            ])
    , Slides.html <|
        (Html.div
            []
            [ Html.img
                [ Attributes.src "assets/koichi-notsure.png"
                ]
                []
            ])
    , Slides.html <|
        (Html.div
            []
            [ Html.img
                [ Attributes.src "assets/cyclic-definition.png"
                ]
                []
            ])
    , Slides.html <|
        (Html.div
            []
            [ Html.img
                [ Attributes.src "assets/bad-recursion-doc.png"
                ]
                []
            ])
    , Slides.html <|
        (Html.div
            []
            [ Html.img
                [ Attributes.src "assets/luffy-amazed.png"
                ]
                []
            ])
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
        # Syntax Errors
        """
    , Slides.md
        """
        A function definition with no implementation
        ```elm
        undefined : Int
        ```
        """
    , Slides.md
        """
        Tabs!
        ```elm
        foo =
        	5
        ```
        """
    , Slides.md
        """
        Pattern matching on a float
        ```elm
        match f =
            case f of
                0.25 ->
                    \"money\"
                
                _ ->
                    \"no money\"
        ```
        """
    , Slides.md
        """
        Reached the end of the file while parsing a shader...
        ```elm
        shader = [glsl|
        ```
        ... wait, what's a shader?
        """
    , Slides.html <|
        (Html.div
            []
            [ Html.img
                [ Attributes.src "assets/elm-glsl.png"
                ]
                []
            ])
    , Slides.md
        """
        # Canonicalize Errors
        """
    , Slides.md
        """
        Duplicate constructors for a custom type
        ```elm
        type Custom
            = Foo
            | Foo
        ```
        """
    , Slides.md
        """
        Recursive type alias
        ```elm
        type alias Comment =
          { message : String
          , upvotes : Int
          , downvotes : Int
          , responses : List Comment
          }
        ```
        """
    , Slides.md
        """
        Recursive type declaration
        ```elm
        questionDecoder =
            D.map2 Question
                (D.field "text" D.string)
                (D.field "choices" (D.list choiceDecoder))
        
        
        choiceDecoder =
            D.map2 Choice
                (D.field "text" D.string)
                (D.field "result" treeDecoder)
        
        treeDecoder =
            D.oneOf [ D.map Node questionDecoder , D.map Leaf recommendationDecoder ]
        ```
        """
    , Slides.md
        """
        # Type Errors
        """
    , Slides.md
        """
        Inconsistent return types
        ```elm
        messedUpIf =
            if True then
                "fish"
        
            else
                3.1415

        ```
        """
    , Slides.md
        """
        Too few or too many arguments
        ```elm
        foo =
            not || False
        
        foo =
            not True "Hats"
        ```
        """
    , Slides.md
        """
        # Main Errors
        """
    , Slides.md
        """
        Main has the wrong type
        ```elm
        main =
            0
        ```
        """
    , Slides.md
        """
        Main is recursive
        ```elm
        main x =
            case x of
                False ->
                    main True
                
                True ->
                    {}
        ```
        """
    , Slides.md
        """
        # Pattern Errors
        """
    , Slides.md
        """
        Incomplete match
        ```elm
        type Foo
            = Bar
            | Baz
        
        doThing x =
            case x of
                Bar ->
                    5
        ```
        """
    , Slides.md
        """
        Redundant match
        ```elm
        type Foo
            = Bar
            | Baz
        
        doThing x =
            case x of
                Bar ->
                    5
                
                Baz ->
                    6
                
                Baz ->
                    6
        ```
        """
    , Slides.md
        """
        # Docs Errors
        """
    
    ]