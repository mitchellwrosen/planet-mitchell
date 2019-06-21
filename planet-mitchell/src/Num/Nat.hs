{-# LANGUAGE CPP, ExplicitNamespaces #-}
#if __GLASGOW_HASKELL__ >= 806
{-# LANGUAGE NoStarIsType #-}
#endif

module Num.Nat
  ( -- * Nat
    Nat
  , KnownNat
  , natVal
  , natVal'
  , SomeNat(..)
  , someNatVal
  , sameNat
  , type (<=)
  , type (<=?)
  , type (+)
  , type (*)
  , type (^)
  , type (-)
#if MIN_VERSION_base(4,11,0)
  , Div
  , Mod
  , Log2
#endif
  , CmpNat
  ) where

import GHC.TypeLits
