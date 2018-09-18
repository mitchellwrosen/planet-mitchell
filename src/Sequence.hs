{-# language CPP #-}

module Sequence
  ( -- * Sequence
    module Data.Sequence,
#ifdef DEP_LENS
    -- ** Optics
    viewL,
    viewR,
    sliced,
    slicedTo,
    slicedFrom,
    seqOf,
#endif
  ) where

import Data.Sequence
#ifdef DEP_LENS
import Data.Sequence.Lens
#endif
