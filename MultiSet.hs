{-| This module contains:

    * The 'MultiSet' type and related functions from @multiset@, originally
      exported from the "Data.MultiSet" module.

    The following types and functions are not re-exported:

    * 'Occur' (unnecessary, it's just 'Int')
    * '\\' (use 'difference' instead)
    * 'showTree' (uncommon)
    * 'showTreeWith' (uncommon)
    * 'valid' (uncommon)

-}

module MultiSet
  ( MultiSet
  , null
  , size
  , distinctSize
  , member
  , notMember
  , occur
  , isSubsetOf
  , isProperSubsetOf
  , empty
  , singleton
  , insert
  , insertMany
  , delete
  , deleteMany
  , deleteAll
  , union
  , unions
  , maxUnion
  , difference
  , intersection
  , filter
  , partition
  , split
  , splitOccur
  , map
  , mapMonotonic
  , mapMaybe
  , mapEither
  , concatMap
  , unionsMap
  , bind
  , join
  , fold
  , foldOccur
  , findMin
  , findMax
  , deleteMin
  , deleteMax
  , deleteMinAll
  , deleteMaxAll
  , deleteFindMin
  , deleteFindMax
  , maxView
  , minView
  , elems
  , distinctElems
  , toList
  , toAscList
  , toOccurList
  , toAscOccurList
  , fromList
  , fromAscList
  , fromDistinctAscList
  , fromOccurList
  , fromAscOccurList
  , fromDistinctAscOccurList
  , toMap
  , fromMap
  , fromOccurMap
  , toSet
  , fromSet
  ) where

import Data.MultiSet
