module Ptr.Fun
  ( FunPtr
  , nullFunPtr
  , castFunPtr
  , castFunPtrToPtr
  , castPtrToFunPtr
  , freeHaskellFunPtr
  , FinalizerPtr
  , FinalizerEnvPtr
  , finalizerFree
  ) where

import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
