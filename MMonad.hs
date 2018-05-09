{-# language CPP #-}

#ifdef USE_MMONAD

module MMonad
  ( MMonad(..)
  , squash
  , (>|>)
  , (<|<)
  , (=<|)
  , (|>=)
  ) where

import Control.Monad.Morph

#else

module MMonad where

#endif
