{-| This module contains:

    * List functions from @base@, originally exported from "Data.List".
    * List functions from @extra@, originally exported from "Data.List.Extra".
-}

{-# language CPP #-}

module List
  ( (++),
    (\\),
#ifdef EXTRA
    allSame,
    anySame,
#endif
    break,
#ifdef EXTRA
    breakOn,
    breakOnEnd,
    breakEnd,
    chunksOf,
    cons,
#endif
    cycle,
    delete,
    deleteBy,
    deleteFirstsBy,
#ifdef EXTRA
    disjoint,
#endif
    drop,
#ifdef EXTRA
    dropEnd,
    dropPrefix,
    dropSuffix,
#endif
    dropWhile,
    dropWhileEnd,
    elemIndex,
    elemIndices,
    filter,
    findIndex,
    findIndices,
    genericDrop,
    genericIndex,
    genericLength,
    genericReplicate,
    genericSplitAt,
    genericTake,
    group,
    groupBy,
#ifdef EXTRA
    groupOn,
    groupSort,
    groupSortBy,
    groupSortOn,
#endif
    inits,
    insert,
    insertBy,
    intercalate,
    intersect,
    intersectBy,
    intersperse,
    isInfixOf,
    isPrefixOf,
    isSubsequenceOf,
    isSuffixOf,
    iterate,
#if MIN_VERSION_base(4,11,0)
    iterate',
#endif
    lookup,
    map,
    nub,
    nubBy,
#ifdef EXTRA
    nubOn,
    nubOrd,
    nubOrdBy,
    nubOrdOn,
    nubSort,
    nubSortBy,
    nubSortOn,
#endif
    partition,
    permutations,
    repeat,
    replicate,
    reverse,
    scanl,
    scanl',
    scanl1,
    scanr,
    scanr1,
    sort,
    sortBy,
    sortOn,
    span,
#ifdef EXTRA
    spanEnd,
    split,
#endif
    splitAt,
#ifdef EXTRA
    splitAtEnd,
    splitOn,
    snoc,
    stripInfix,
    stripInfixEnd,
#endif
    stripPrefix,
#ifdef EXTRA
    stripSuffix,
#endif
    subsequences,
    tails,
    take,
#ifdef EXTRA
    takeEnd,
#endif
    takeWhile,
#ifdef EXTRA
    takeWhileEnd,
#endif
    transpose,
    uncons,
    unfoldr,
    union,
    unionBy,
#ifdef EXTRA
    unsnoc,
#endif
    unzip,
    unzip3,
    unzip4,
    unzip5,
    unzip6,
    unzip7,
    zip,
    zip3,
    zip4,
    zip5,
    zip6,
    zip7,
    zipWith,
    zipWith3,
    zipWith4,
    zipWith5,
    zipWith6,
    zipWith7,
  ) where

import Data.List
#ifdef EXTRA
import Data.List.Extra
#endif
