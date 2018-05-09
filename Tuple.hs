{-# language CPP #-}

module Tuple
  ( fst
  , snd
  , curry
  , uncurry
  , swap
#ifdef USE_EXTRA
  , dupe
#endif
  ) where

import Data.Tuple
#ifdef USE_EXTRA
import Data.Tuple.Extra
#endif
