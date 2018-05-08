{-| This module contains:

    * The 'OrdPSQ' type from @psqueues@, originally exported from "Data.OrdPSQ".
-}

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
