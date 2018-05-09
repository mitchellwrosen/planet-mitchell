{-# language CPP #-}

#ifdef USE_TRANSFORMERS_BASE

module MonadBase
  ( MonadBase(..)
  ) where

import Control.Monad.Base

#else

module MonadBase where

#endif
