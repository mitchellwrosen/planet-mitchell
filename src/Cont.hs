{-# language CPP #-}

module Cont
  (
#ifdef DEP_TRANSFORMERS
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
#ifdef DEP_MTL
    -- * MonadCont
    MonadCont(..),
#endif
  ) where

#ifdef DEP_MTL
import Control.Monad.Cont.Class
#endif
#ifdef DEP_TRANSFORMERS
import Control.Monad.Trans.Cont
#endif
