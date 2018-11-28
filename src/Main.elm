module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)
import Router.Types
import Types exposing (..)
import Update exposing (init, update)
import View exposing (view)


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        {-- Wrap Url like this:
        MsgForRouter ( Router.Types.OnUrlChange url )
        So every URL change will become a parameter to be passed to 'update' function
        And we will handle the change in 'update' function
        --}
        , onUrlChange = MsgForRouter << Router.Types.OnUrlChange
        , onUrlRequest = MsgForRouter << Router.Types.OnUrlRequest
        }
