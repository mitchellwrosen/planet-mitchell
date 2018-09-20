module Monad
  ( -- * Monad
    Monad((>>=), return)
  , (=<<)
  , (>=>)
  , (<=<)
  , (<$!>)
  , join
  , loopM
  , unlessM
  , whenJustM
  , whenM
  , whileM
    -- ** Newtypes
  , Kleisli(..)
    -- * MMonad
  , MMonad(..)
  , squash
  , (>|>)
  , (<|<)
  , (=<|)
  , (|>=)
  ) where

import Control.Arrow (Kleisli(Kleisli, runKleisli))
import Control.Monad (Monad((>>=), return), (=<<), (>=>), (<=<), (<$!>), join)
import Control.Monad.Extra (loopM, unlessM, whenJustM, whenM, whileM)
import Control.Monad.Morph (MMonad(embed), squash, (>|>), (<|<), (=<|), (|>=))
