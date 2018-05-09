{-| This module contains:

    * The partial functions exported by "Data.DList" from @dlist@.
-}

{-# language CPP #-}

#ifdef DLIST

module DList.Partial
  ( head
  , tail
  ) where

import Data.DList

#else

module DList.Partial where

#endif
