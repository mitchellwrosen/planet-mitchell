{-# LANGUAGE PackageImports, PatternSynonyms #-}

module Num.Half
  ( Half(..)
  , isZero
  , fromHalf
  , toHalf
  , pattern POS_INF
  , pattern NEG_INF
  , pattern QNaN
  , pattern SNaN
  , pattern HALF_MIN
  , pattern HALF_NRM_MIN
  , pattern HALF_MAX
  , pattern HALF_EPSILON
  , pattern HALF_DIG
  , pattern HALF_MIN_10_EXP
  , pattern HALF_MAX_10_EXP
  ) where

import "half" Numeric.Half
