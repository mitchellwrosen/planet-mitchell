{-# language CPP #-}

module Either
  ( Either(..),
    either,
#ifdef DEP_EXTRA
    eitherM,
#endif
    lefts,
    rights,
    isLeft,
    isRight,
    fromLeft,
    fromRight,
    partitionEithers,
#ifdef DEP_LENS
    -- ** Optics
    _Left,
    _Right,
#endif
  ) where

#ifdef DEP_LENS
import Control.Lens.Prism (_Left, _Right)
#endif
#ifdef DEP_EXTRA
import Control.Monad.Extra (eitherM)
#endif
import Data.Either
  (Either(Left, Right), either, fromLeft, fromRight, isLeft, isRight, lefts,
    partitionEithers, rights)
