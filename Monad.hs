module Monad
  ( Monad((>>=), return)
  , (=<<)
  , (>=>)
  , (<=<)
  , join
  , (<$!>)
  , maybeM
  , eitherM
  , whileM
  , whenM
  , whenJustM
  , unlessM
  , ifM
  , notM
  , Kleisli(..)
  ) where

import Control.Arrow
import Control.Monad
import Control.Monad.Extra
