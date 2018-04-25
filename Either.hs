module Either
  ( Either(..)
  , either
  , lefts
  , rights
  , isLeft
  , isRight
  , fromLeft
  , fromRight
  , partitionEithers
    -- * Optics
  , _Left
  , _Right
  ) where

import Control.Lens.Prism
import Data.Either
