{-# language CPP #-}

#ifdef USE_TAGGED

module Tagged
  ( module Data.Tagged
  ) where

import Data.Tagged

#else

module Tagged where

#endif
