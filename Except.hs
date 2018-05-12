{-# language CPP #-}

module Except
  (
#ifdef USE_TRANSFORMERS
    -- * ExceptT
    ExceptT(..),
    runExceptT,
    mapExceptT,
    withExceptT,
#endif
#ifdef USE_MTL
    -- * MonadError
    MonadError(..),
#elif defined(USE_TRANSFORMERS)
    throwE,
    catchE,
#endif
  ) where

#ifdef USE_MTL
import Control.Monad.Error.Class
#endif
#ifdef USE_TRANSFORMERS
import Control.Monad.Trans.Except
#endif
