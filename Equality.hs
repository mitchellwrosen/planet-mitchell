{-# language CPP                #-}
{-# language ExplicitNamespaces #-}

module Equality
  (
    Eq(..),
#ifdef DEP_CONTRAVARIANT
    Equivalence(..),
    defaultEquivalence,
    comparisonEquivalence,
#endif
    Eq1(..),
    eq1,
#ifdef DEP_TRANSFORMERS_COMPAT
    liftEqDefault,
#endif
    Eq2(..),
    eq2,
    -- * Propositional equality
    (:~:)(..),
    (:~~:)(..),
    sym,
    trans,
    castWith,
    gcastWith,
    apply,
    inner,
    outer,
    TestEquality(..),
    type (==),
  ) where

import Data.Eq
import Data.Functor.Classes
#ifdef DEP_TRANSFORMERS_COMPAT
import Data.Functor.Classes.Generic
#endif
#ifdef DEP_CONTRAVARIANT
import Data.Functor.Contravariant
#endif
import Data.Type.Equality
