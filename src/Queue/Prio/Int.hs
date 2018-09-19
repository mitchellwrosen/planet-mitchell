module Queue.Prio.Int
  ( -- * IntPSQ
    IntPSQ,
    -- * Construction
    empty,
    singleton,
    fromList,
    -- * Querying
    null,
    size,
    member,
    lookup,
    findMin,
    minView,
    atMostView,
    -- * Insertion
    insert,
    insertView,
    -- * Deletion
    delete,
    deleteView,
    -- * Alteration
    alter,
    alterMin,
    -- * Mapping
    map,
    unsafeMapMonotonic,
    -- * Folding
    toList,
    keys,
    fold',
  ) where

import Data.IntPSQ
