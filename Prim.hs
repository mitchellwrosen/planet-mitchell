{-# language CPP #-}

module Prim
  (
#ifdef USE_PRIMITIVE
    module Control.Monad.Primitive,
    module Data.Primitive.Addr,
    module Data.Primitive.Array,
    module Data.Primitive.ByteArray,
    module Data.Primitive.MachDeps,
    module Data.Primitive.MutVar,
    module Data.Primitive.SmallArray,
    module Data.Primitive.Types,
    module Data.Primitive.UnliftedArray,
#endif
  ) where

#ifdef USE_PRIMITIVE
import Control.Monad.Primitive
import Data.Primitive.Addr
import Data.Primitive.Array
import Data.Primitive.ByteArray
import Data.Primitive.MachDeps
import Data.Primitive.MutVar
import Data.Primitive.SmallArray
import Data.Primitive.Types
import Data.Primitive.UnliftedArray
#endif
