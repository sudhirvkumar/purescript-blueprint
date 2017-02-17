module Blueprint.PropTypes where

import Prelude

type UnknownStyleProps = {}

type UnknownEventProps = {}

type Prop a = a -> a

newtype Intent = Intent Int

intent :: { none    :: Intent
          , primary :: Intent
          , success :: Intent
          , warning :: Intent
          , danger  :: Intent
          }
intent = { none    : Intent (-1)
         , primary : Intent 0
         , success : Intent 1
         , warning : Intent 2
         , danger  : Intent 3
         }

type IPrpos r = IPropsEx ()

type IPropsEx r = { className :: String | r }