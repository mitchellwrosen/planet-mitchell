{-# language CPP #-}

#ifdef USE_TRANSFORMERS

module MonadTrans
  ( MonadTrans(..)
  ) where

import Control.Monad.Trans.Class

#else

module MonadTrans where

#endif
