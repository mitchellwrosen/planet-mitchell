module Queue.Prio.Hash
  ( -- * HashPSQ
    HashPSQ
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
  , keys
  , fold'
  ) where

import Data.HashPSQ
