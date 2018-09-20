module Either
  ( Either(..)
  , either
  , eitherM
  , lefts
  , rights
  , isLeft
  , isRight
  , fromLeft
  , fromRight
  , partitionEithers
    -- ** Optics
  , _Left
  , _Right
  ) where

import Control.Lens.Prism  (_Left, _Right)
import Control.Monad.Extra (eitherM)
import Data.Either         (Either(Left, Right), either, fromLeft, fromRight,
                            isLeft, isRight, lefts, partitionEithers, rights)
