{-# language CPP #-}

#ifdef USE_MULTISET

module IntMultiSet
  ( IntMultiSet
  , Key
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

import Data.IntMultiSet

#else

module IntMultiSet where

#endif
