{-# language CPP #-}

#ifdef USE_FOLDL

module Foldl
  ( module Control.Foldl
  ) where

import Control.Foldl

#else

module Foldl where

#endif
