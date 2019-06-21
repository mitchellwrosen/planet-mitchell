module Either
  ( Either(..)
  , either
  , eitherM
  , fromLeft
  , fromRight
  , isLeft
  , isRight
  , lefts
  , mapLeft
  , mapRight
  , partitionEithers
  , rights
    -- ** Optics
  , _Left
  , _Right
  ) where

import Control.Lens.Prism  (_Left, _Right)
import Control.Monad.Extra (eitherM)
import Data.Either         (Either(Left, Right), either, fromLeft, fromRight,
                            isLeft, isRight, lefts, partitionEithers, rights)
import Data.Either.Extra   (mapLeft, mapRight)
