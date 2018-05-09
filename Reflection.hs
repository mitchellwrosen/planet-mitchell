{-# language CPP #-}

#ifdef USE_REFLECTION

module Reflection
  ( Reifies(..)
  , reify
  , reifyNat
  , reifySymbol
  , reifyTypeable
  ) where

import Data.Reflection

#else

module Reflection where

#endif
