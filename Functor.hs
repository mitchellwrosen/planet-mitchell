{-# language CPP #-}

module Functor
  ( Functor(..)
  , (<$>)
  , ($>)
#if MIN_VERSION_base(4,11,0)
  , (<&>)
#endif
  , void
  ) where

import Data.Functor
