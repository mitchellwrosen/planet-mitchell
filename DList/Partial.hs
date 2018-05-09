{-# language CPP #-}

#ifdef USE_DLIST

module DList.Partial
  ( head
  , tail
  ) where

import Data.DList

#else

module DList.Partial where

#endif
