{-# language CPP #-}

module Functor
  ( Functor(..)
  , (<$>)
  , ($>)
#if MIN_VERSION_base(4,11,0)
  , (<&>)
#endif
  , void
  , unzip
  ) where

import Data.Functor
import Data.List.NonEmpty (unzip)
