{-| This module contains:

    * The 'HashPSQ' type from @psqueues@, originally exported from
    "Data.HashPSQ".
-}

module HashPSQ
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
