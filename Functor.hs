{-# language CPP #-}

module Functor
  ( -- * Functor
    Functor(..)
  , (<$>)
  , ($>)
#if MIN_VERSION_base(4,11,0)
  , (<&>)
#endif
  , void
    -- * Optics
  , mapping
  , mapped
  ) where

import Control.Lens.Iso
import Control.Lens.Setter
import Data.Functor
