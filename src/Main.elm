module Main exposing (..)

import Playground exposing (..)


even : Int -> Bool
even n =
    modBy 2 n == 0


color : Bool -> Color
color b =
    case b of
        False ->
            white

        True ->
            black


board : Int -> Program () Screen ( Int, Int )
board size =
    picture [ rectangle black 10 10 ]


drawBox : ( Int, Int ) -> Shape
drawBox ( a, b ) =
    rectangle (color (even (a + b))) 10 10


main =
    board 5
