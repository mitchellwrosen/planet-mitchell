{-# language CPP #-}

#ifdef USE_PROFUNCTORS

module Profunctor
  ( Profunctor(..)
  ) where

import Data.Profunctor

#else

module Profunctor where

#endif
