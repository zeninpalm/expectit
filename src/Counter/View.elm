module Counter.View exposing (view)

import Counter.Types exposing (..)
import Html exposing (Html, button, text, div)
import Html.Events exposing (onClick)
import RemoteData exposing (..)
import Types exposing (Msg(..))
import Styles


view : Model -> Html Msg
view model =
    div []
        [
            button [onClick (MsgForCounter Increment)] [text "+", text (String.fromInt model)]
        ]
