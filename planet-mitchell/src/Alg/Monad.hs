module Alg.Monad
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
  ) where

import Control.Arrow       (Kleisli(Kleisli, runKleisli))
import Control.Monad       (Monad(return, (>>=)), join, (<$!>), (<=<), (=<<),
                            (>=>))
import Control.Monad.Extra (loopM, unlessM, whenJustM, whenM, whileM)
