{-# language CPP #-}

module Tuple
  ( fst
  , snd
  , curry
  , uncurry
  , swap
#ifdef EXTRA
  , dupe
#endif
  ) where

import Data.Tuple
#ifdef EXTRA
import Data.Tuple.Extra
#endif
