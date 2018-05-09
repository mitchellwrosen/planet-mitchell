{-# language CPP #-}

#ifdef USE_MANAGED

module Managed
  ( -- * Managed
    Managed
  , managed
  , managed_
  , with
  , runManaged
    -- * MonadManaged
  , MonadManaged(..)
  ) where

import Control.Monad.Managed

#else

module Managed where

#endif
