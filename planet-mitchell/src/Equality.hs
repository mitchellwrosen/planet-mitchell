{-# LANGUAGE ExplicitNamespaces #-}

module Equality
  (
    Eq(..)
  , Equivalence(..)
  , defaultEquivalence
  , comparisonEquivalence
  , Eq1(..)
  , eq1
  , Eq2(..)
  , eq2
    -- * Propositional equality
  , (:~:)(..)
  , (:~~:)(..)
  , sym
  , trans
  , castWith
  , gcastWith
  , apply
  , inner
  , outer
  , TestEquality(..)
  , type (==)
  ) where

import Data.Eq
import Data.Functor.Classes
import Data.Functor.Contravariant
import Data.Type.Equality
