{-| This module contains:

    * The 'IntPSQ' type from @psqueues@, originally exported from "Data.IntPSQ".
-}

module IntPSQ
  ( -- * IntPSQ
    IntPSQ
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

import Data.IntPSQ
