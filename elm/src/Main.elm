-- https://ellie-app.com/3KJz279Rshza1

module Main exposing (Msg(..), main, update, view)

import Browser
import Html exposing (Html, div, text)


main =
    Browser.sandbox
        { init =
            { count = 100
            }
        , update = update
        , view = view
        }


type alias Model =
    { count : Int }


type Msg
    = Null


update : Msg -> Model -> Model
update msg model =
    model


view : Model -> Html Msg
view model =
    div [] <|
        List.concat <|
            List.map (htmlLine << fizzbuzz) (List.range 1 model.count)


fizzbuzz : Int -> String
fizzbuzz x =
    if modBy 3 x == 0 && modBy 5 x == 0 then
        "FizzBuzz"

    else if modBy 5 x == 0 then
        "Buzz"

    else if modBy 3 x == 0 then
        "Fizz"

    else
        String.fromInt x


htmlLine : String -> List (Html Msg)
htmlLine s =
    [ text s, Html.br [] [] ]
