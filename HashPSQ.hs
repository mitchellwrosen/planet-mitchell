{-| This module contains:

    * The 'HashPSQ' type from @psqueues@, originally exported from
    "Data.HashPSQ".

    The following functions are not re-exported:

    * 'deleteMin' (uncommon)
    * 'valid' (uncommon)

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
