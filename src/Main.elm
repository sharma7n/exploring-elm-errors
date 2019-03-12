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
    , Slides.html <|
        (Html.div
            []
            [ Html.img 
                [ Attributes.src "assets/animechicago-crest.png"
                ] 
                []
            ])
    ]