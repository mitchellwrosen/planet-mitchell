{-# language CPP #-}

#ifdef USE_TIME

module Time
  ( module Data.Time
  ) where

import Data.Time

#else

module Time where

#endif
