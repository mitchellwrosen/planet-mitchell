{-# language CPP #-}

module Tuple
  ( fst
  , snd
  , curry
  , uncurry
  , swap
#ifdef DEP_EXTRA
  , dupe
#endif
  ) where

import Data.Tuple
#ifdef DEP_EXTRA
import Data.Tuple.Extra
#endif
