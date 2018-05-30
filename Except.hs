{-# language CPP #-}

module Except
  (
#ifdef DEP_TRANSFORMERS
    -- * ExceptT
    ExceptT(..),
    runExceptT,
    mapExceptT,
    withExceptT,
#endif
#ifdef DEP_MTL
    -- * MonadError
    MonadError(..),
#elif defined(DEP_TRANSFORMERS)
    throwE,
    catchE,
#endif
  ) where

#ifdef DEP_MTL
import Control.Monad.Error.Class
#endif
#ifdef DEP_TRANSFORMERS
import Control.Monad.Trans.Except
#endif
