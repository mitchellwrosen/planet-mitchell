{-# language CPP #-}

module List
  ( (++),
    (\\),
#ifdef DEP_EXTRA
    allSame,
    anySame,
#endif
    break,
#ifdef DEP_EXTRA
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
#ifdef DEP_EXTRA
    disjoint,
#endif
    drop,
#ifdef DEP_EXTRA
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
#ifdef DEP_EXTRA
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
#ifdef DEP_EXTRA
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
#ifdef DEP_EXTRA
    spanEnd,
    split,
#endif
    splitAt,
#ifdef DEP_EXTRA
    splitAtEnd,
    splitOn,
    snoc,
    stripInfix,
    stripInfixEnd,
#endif
    stripPrefix,
#ifdef DEP_EXTRA
    stripSuffix,
#endif
    subsequences,
    tails,
    take,
#ifdef DEP_EXTRA
    takeEnd,
#endif
    takeWhile,
#ifdef DEP_EXTRA
    takeWhileEnd,
#endif
    transpose,
    uncons,
    unfoldr,
    union,
    unionBy,
#ifdef DEP_EXTRA
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
    -- * String
    String,
    words,
    unwords,
    lines,
    unlines,
#ifdef DEP_EXTRA
    lower,
    upper,
    trim,
    trimStart,
    trimEnd,
#endif
    showString,
    lexDigits,
    IsString(..),
  ) where

import Data.List
#ifdef DEP_EXTRA
import Data.List.Extra
#endif
import Data.String (IsString(..), String)
import GHC.Show (showString)
import Numeric (lexDigits)
