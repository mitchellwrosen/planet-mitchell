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
  ) where

import Control.Applicative (Applicative(liftA2, pure, (*>), (<*), (<*>), (<*>)),
                            liftA3)
import Control.Monad       (filterM, forever, replicateM, replicateM_, unless,
                            when, zipWithM, zipWithM_)
