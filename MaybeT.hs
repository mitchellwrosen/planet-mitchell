{-# language CPP #-}

#ifdef USE_TRANSFORMERS

module MaybeT
  ( MaybeT(..)
  , mapMaybeT
  ) where

import Control.Monad.Trans.Maybe

#else

module MaybeT where

#endif
