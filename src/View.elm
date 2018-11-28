module View exposing (renderRoute, view)

import Browser
import Html exposing (Html, div, button, text)
import Html.Attributes exposing (class)
import Cats.View
import Counter.View
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Styles
import Types exposing (..)


view : Model -> Browser.Document Types.Msg
view model =
    { title = "expectit"
    , body = [
        div []
            [
                div [class "red-text"] [(renderRoute model)]
            ]
        ]
    }


renderRoute : Model -> Html Types.Msg
renderRoute model =
    case model.router.page of
        Home ->
            div [] []

        NotFound ->
            text "404 Not Found"

        CatsPage ->
            div [] [text "Cats"]

        CounterPage ->
            Counter.View.view model.counter
{--
        NotFound ->
            text "404 Not Found"

        CatsPage ->
            Element.map MsgForCats (Cats.View.view model.cats)

        CounterPage ->
            Element.map MsgForCounter (Counter.View.view model.counter)
--}
