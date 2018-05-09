{-# language CPP #-}

#ifdef DISTRIBUTIVE

module Distributive
  ( Distributive(..)
  , cotraverse
  , comapM
  , fmapCollect
  ) where

import Data.Distributive

#else

module Distributive where

#endif
