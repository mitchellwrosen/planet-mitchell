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
#ifdef USE_EXTRA
    whenJust,
#endif
    zipWithM,
    zipWithM_,
  ) where

import Control.Applicative
import Control.Monad
#ifdef USE_EXTRA
import Control.Monad.Extra
#endif
