module Alg.Applicative
  ( -- * Applicative
    Applicative(..)
  , filterM
  , forever
  , liftA3
  , replicateM
  , replicateM_
  , unless
  , when
  , zipWithM
  , zipWithM_
    -- * Alternative
  , Alternative((<|>), empty, many)
  , guard
  , optional
  , some1
    -- ** Newtypes
  , Alt(..)
  ) where

import Control.Applicative (Alternative(empty, many, (<|>)),
                            Applicative(liftA2, pure, (*>), (<*), (<*>), (<*>)),
                            liftA3)
import Control.Monad       (filterM, forever, guard, replicateM, replicateM_,
                            unless, when, zipWithM, zipWithM_)
import Data.Functor.Alt    (optional)
import Data.List.NonEmpty  (some1)
import Data.Monoid         (Alt(Alt, getAlt))
