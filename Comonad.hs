{-# language CPP #-}

#ifdef USE_COMONAD

module Comonad
  ( Comonad(..)
  , wfix
  , cfix
  , kfix
  , (=>=)
  , (=<=)
  , (<<=)
  , (=>>)
  , Cokleisli(..)
  ) where

import Control.Comonad

#else

module Comonad where

#endif
