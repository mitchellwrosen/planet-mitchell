module Ptr.Static
  ( StaticPtr
  , deRefStaticPtr
  , StaticKey
  , staticKey
  , unsafeLookupStaticPtr
  , StaticPtrInfo(..)
  , staticPtrInfo
  , staticPtrKeys
  , IsStatic(..)
  ) where

import GHC.StaticPtr
