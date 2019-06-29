module Alg.Foldable.Partial
  ( -- * Foldable
    foldr1
  , maximum
  , maximumBy
  , minimum
  , minimumBy
    -- * Bifoldable
  , bifoldl1
  , bifoldr1
  , bimaximum
  , bimaximumBy
  , biminimum
  , biminimumBy
  ) where

import Data.Bifoldable (bifoldl1, bifoldr1, bimaximum, bimaximumBy, biminimum,
                        biminimumBy)
import Data.Foldable   (foldr1, maximum, maximumBy, minimum, minimumBy)
