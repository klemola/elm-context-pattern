module Styles exposing (..)

import Html exposing (Attribute)
import Html.Attributes
import Css exposing (..)


-- HELPERS


styles : List Mixin -> Attribute msg
styles =
    Css.asPairs >> Html.Attributes.style



-- CONSTANTS


colorLightGrey : Color
colorLightGrey =
    hex "e7e7e7"


colorOffWhite : Color
colorOffWhite =
    hex "fafffa"


colorDarkGrey : Color
colorDarkGrey =
    hex "777777"


colorDarkGreen : Color
colorDarkGreen =
    hex "0c480d"


colorMidGreen : Color
colorMidGreen =
    hex "347d3e"


colorLightGreen : Color
colorLightGreen =
    hex "ebf7ee"



-- MIXINS


container : Mixin
container =
    mixin
        [ padding2 (Css.rem 0.5) (Css.rem 1) ]


buttonBase : Mixin
buttonBase =
    mixin
        [ fontSize (Css.rem 1)
        , padding2 (Css.rem 0.5) (Css.rem 1)
        , borderStyle none
        , outline none
        , cursor pointer
        ]


navigationButtonBase : Mixin
navigationButtonBase =
    mixin
        [ displayFlex
        , flex (int 1)
          -- elm-css has no justify-content support
        , property "justify-content" "center"
        ]



-- ELEMENT STYLES


appStyles : List Mixin
appStyles =
    [ color colorDarkGreen
    ]


wrapper : List Mixin
wrapper =
    [ maxWidth (px 720)
    , margin auto
    ]


headerSection : List Mixin
headerSection =
    [ container
    , textAlign center
    ]


navigationBar : List Mixin
navigationBar =
    [ displayFlex
    , flexDirection row
    ]


navigationButton : List Mixin
navigationButton =
    [ buttonBase
    , navigationButtonBase
    , backgroundColor colorMidGreen
    , color colorLightGreen
    ]


navigationButtonActive : List Mixin
navigationButtonActive =
    [ buttonBase
    , navigationButtonBase
    , backgroundColor colorDarkGreen
    , color colorLightGreen
    ]


activeView : List Mixin
activeView =
    [ container
    , backgroundColor colorLightGreen
    , paddingBottom (Css.rem 1)
    ]


actionButton : List Mixin
actionButton =
    [ buttonBase
    , backgroundColor colorMidGreen
    , color colorLightGreen
    , borderRadius (px 4)
    ]


actionButtonActive : List Mixin
actionButtonActive =
    [ buttonBase
    , backgroundColor colorDarkGreen
    , color colorLightGreen
    , borderRadius (px 4)
    ]


commitList : List Mixin
commitList =
    [ listStyle none
    , padding (px 0)
    ]


card : List Mixin
card =
    [ padding2 (Css.rem 0.5) (Css.rem 1)
    , marginBottom (Css.rem 1)
    , borderLeft3 (px 5) solid colorDarkGreen
    , backgroundColor colorOffWhite
    ]


footerSection : List Mixin
footerSection =
    [ container
    , textAlign center
    , backgroundColor colorDarkGreen
    , color colorOffWhite
    , marginBottom (Css.rem 2)
    ]


footerLink : List Mixin
footerLink =
    [ color colorOffWhite ]


gutterTop : List Mixin
gutterTop =
    [ marginTop (Css.rem 1) ]


gutterRight : List Mixin
gutterRight =
    [ marginRight (Css.rem 1) ]


flexContainer : List Mixin
flexContainer =
    [ displayFlex ]


flex1 : List Mixin
flex1 =
    [ flex (int 1) ]


flex2 : List Mixin
flex2 =
    [ flex (int 2) ]


avatarPicture : List Mixin
avatarPicture =
    [ width (px 50)
    , height (px 50)
    ]


stargazerName : List Mixin
stargazerName =
    [ paddingLeft (Css.rem 0.5)
    , boxSizing borderBox
    ]
