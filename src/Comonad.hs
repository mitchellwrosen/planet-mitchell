module Comonad
  ( -- * Comonad
    Comonad(..)
  , wfix
  , cfix
  , kfix
  , (=>=)
  , (=<=)
  , (<<=)
  , (=>>)
    -- * ComonadApply
  , ComonadApply(..)
  , (<@@>)
  , liftW2
  , liftW3
    -- * Newtypes
  , Cokleisli(..)
  ) where

import Control.Comonad
