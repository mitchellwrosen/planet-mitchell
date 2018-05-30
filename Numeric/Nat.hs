{-# language CPP                #-}
{-# language ExplicitNamespaces #-}

module Numeric.Nat
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
#ifdef DEP_CONSTRAINTS
  , Min
  , Max
  , Lcm
  , Gcd
  , Divides
#endif
#if MIN_VERSION_base(4,11,0)
  , Div
  , Mod
  , Log2
#endif
  , CmpNat
    -- ** Constraints
#ifdef DEP_CONSTRAINTS
  , plusNat
  , timesNat
  , powNat
  , minNat
  , maxNat
  , gcdNat
  , lcmNat
  , divNat
  , modNat
  , plusZero
  , timesZero
  , timesOne
  , powZero
  , powOne
  , maxZero
  , minZero
  , gcdZero
  , gcdOne
  , lcmZero
  , lcmOne
  , plusAssociates
  , timesAssociates
  , minAssociates
  , maxAssociates
  , gcdAssociates
  , lcmAssociates
  , plusCommutes
  , timesCommutes
  , minCommutes
  , maxCommutes
  , gcdCommutes
  , lcmCommutes
  , plusDistributesOverTimes
  , timesDistributesOverPow
  , timesDistributesOverGcd
  , timesDistributesOverLcm
  , minDistributesOverPlus
  , minDistributesOverTimes
  , minDistributesOverPow1
  , minDistributesOverPow2
  , minDistributesOverMax
  , maxDistributesOverPlus
  , maxDistributesOverTimes
  , maxDistributesOverPow1
  , maxDistributesOverPow2
  , maxDistributesOverMin
  , gcdDistributesOverLcm
  , lcmDistributesOverGcd
  , minIsIdempotent
  , maxIsIdempotent
  , lcmIsIdempotent
  , gcdIsIdempotent
  , plusIsCancellative
  , timesIsCancellative
  , dividesPlus
  , dividesTimes
  , dividesMin
  , dividesMax
  , dividesPow
  , dividesGcd
  , dividesLcm
  , plusMonotone1
  , plusMonotone2
  , timesMonotone1
  , timesMonotone2
  , powMonotone1
  , powMonotone2
  , minMonotone1
  , minMonotone2
  , maxMonotone1
  , maxMonotone2
  , divMonotone1
  , divMonotone2
  , euclideanNat
  , plusMod
  , timesMod
  , modBound
  , dividesDef
  , timesDiv
  , eqLe
  , leEq
  , leId
  , leTrans
  , zeroLe
#endif
  ) where

#ifdef DEP_CONSTRAINTS
import Data.Constraint.Nat
#endif
import GHC.TypeLits
