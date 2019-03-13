import Html.Styled as Html
import Html.Styled.Attributes as Attributes

import Slides
import Slides.FragmentAnimation
import Slides.SlideAnimation
import Slides.Styles

main = Slides.app
    Slides.slidesDefaultOptions
    [ Slides.md
        """
        # Exploring Elm's Compiler Error Messages
        
        Nik Sharma
        
        Elm in the Spring 2019
        """
    , Slides.md
        """
        - My story of discovering a cool error message
        - An overview of all the kinds of errors in Elm
        - One code example per error type
        - Takeaways
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
    , Slides.md
        """
        Source: https://github.com/elm/compiler/blob/master/compiler/src/Reporting/Error.hs
        ```
        -- ALL POSSIBLE ERRORS


        data Error
          = Syntax Syntax.Error
          | Canonicalize Canonicalize.Error
          | Type L.Localizer [Type.Error]
          | Main L.Localizer Main.Error
          | Pattern [Pattern.Error]
          | Docs Docs.Error
        ```
        """
    , Slides.md
        """
        # Syntax Errors
        """
    , Slides.md
        """
        # Canonicalize Errors
        """
    , Slides.md
        """
        # Type Errors
        """
    , Slides.md
        """
        # Main Errors
        """
    , Slides.md
        """
        # Pattern Errors
        """
    , Slides.md
        """
        # Docs Errors
        """
    ]