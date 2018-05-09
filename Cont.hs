{-# language CPP #-}

#ifdef USE_MTL

module Cont
  ( -- * Cont
    Cont
  , cont
  , runCont
  , mapCont
  , withCont
    -- * ContT
  , ContT(..)
  , mapContT
  , withContT
    -- * MonadCont
  , MonadCont(..)
  ) where

import Control.Monad.Cont

#else

module Cont where

#endif
