{-# language CPP #-}

module Either
  ( Either(..),
    either,
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
import Control.Lens.Prism
#endif
import Data.Either
