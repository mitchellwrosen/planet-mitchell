{-# language CPP #-}

module Applicative
  ( -- * Applicative
    Applicative(..),
    filterM,
    forever,
    liftA3,
    replicateM,
    replicateM_,
    unless,
    when,
#ifdef DEP_EXTRA
    whenJust,
#endif
    zipWithM,
    zipWithM_,
  ) where

import Control.Applicative
import Control.Monad
#ifdef DEP_EXTRA
import Control.Monad.Extra
#endif
