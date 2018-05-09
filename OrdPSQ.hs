{-# language CPP #-}

#ifdef USE_PSQUEUES

module OrdPSQ
  ( -- * OrdPSQ
    OrdPSQ
    -- * Construction
  , empty
  , singleton
  , fromList
    -- * Querying
  , null
  , size
  , member
  , lookup
  , findMin
  , minView
  , atMostView
    -- * Insertion
  , insert
  , insertView
    -- * Deletion
  , delete
  , deleteView
    -- * Alteration
  , alter
  , alterMin
    -- * Mapping
  , map
  , unsafeMapMonotonic
    -- * Folding
  , toList
  , toAscList
  , keys
  , fold'
  ) where

import Data.OrdPSQ

#else

module OrdPSQ where

#endif
