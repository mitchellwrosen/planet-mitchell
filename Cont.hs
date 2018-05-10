{-# language CPP #-}

module Cont
  (
#ifdef USE_TRANSFORMERS
    -- * Cont
    Cont,
    cont,
    runCont,
    mapCont,
    withCont,
    -- * ContT
    ContT(..),
    mapContT,
    withContT,
#endif
#ifdef USE_MTL
    -- * MonadCont
    MonadCont(..),
#endif
  ) where

#ifdef USE_MTL
import Control.Monad.Cont.Class
#endif
#ifdef USE_TRANSFORMERS
import Control.Monad.Trans.Cont
#endif
