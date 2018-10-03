{-# LANGUAGE CPP #-}

module List
  ( -- * List
    (++)
  , (\\)
  , allSame
  , anySame
  , break
  , breakOn
  , breakOnEnd
  , breakEnd
  , chop
  , cons
  , cycle
  , delete
  , deleteBy
  , deleteFirstsBy
  , disjoint
  , divvy
  , drop
  , dropEnd
  , dropPrefix
  , dropSuffix
  , dropWhile
  , dropWhileEnd
  , elemIndex
  , elemIndices
  , endBy
  , filter
  , findIndex
  , findIndices
  , foldl1May'
  , foldr1May
  , genericDrop
  , genericIndex
  , genericLength
  , genericReplicate
  , genericSplitAt
  , genericTake
  , group
  , groupBy
  , groupOn
  , groupSort
  , groupSortBy
  , groupSortOn
  , headMay
  , initMay
  , inits
  , insert
  , insertBy
  , intercalate
  , intersect
  , intersectBy
  , intersperse
  , isInfixOf
  , isPrefixOf
  , isSubsequenceOf
  , isSuffixOf
  , iterate
#if MIN_VERSION_base(4,11,0)
  , iterate'
#endif
  , lastMay
  , lookup
  , map
  , maximumByMay
  , maximumMay
  , minimumByMay
  , minimumMay
  , nub
  , nubBy
  , nubOn
  , nubOrd
  , nubOrdBy
  , nubOrdOn
  , nubSort
  , nubSortBy
  , nubSortOn
  , partition
  , permutations
  , repeat
  , replicate
  , reverse
  , scanl
  , scanl'
  , scanl1
  , scanr
  , scanr1
  , sort
  , sortBy
  , sortOn
  , span
  , spanEnd
  , split
  , splitAt
  , splitAtEnd
  , splitOn
  , snoc
  , stripInfix
  , stripInfixEnd
  , stripPrefix
  , stripSuffix
  , subsequences
  , tailMay
  , tails
  , take
  , takeEnd
  , takeWhile
  , takeWhileEnd
  , transpose
  , uncons
  , unfoldr
  , union
  , unionBy
  , unsnoc
  , unzip
  , unzip3
  , unzip4
  , unzip5
  , unzip6
  , unzip7
  , wordsBy
  , zip
  , zip3
  , zip4
  , zip5
  , zip6
  , zip7
  , zipWith
  , zipWith3
  , zipWith4
  , zipWith5
  , zipWith6
  , zipWith7
    -- ** Diff algorithm
  , Diff(..)
  , getDiff
  , getDiffBy
  , getGroupedDiff
  , getGroupedDiffBy
    -- ** String
  , String
  , words
  , unwords
  , lines
  , unlines
  , lower
  , upper
  , trim
  , trimStart
  , trimEnd
  , showString
  , lexDigits
  , IsString(..)
    -- ** Optics
  , prefixed
  , suffixed
  ) where

import Data.Algorithm.Diff (Diff(Both, First, Second), getDiff, getDiffBy,
                            getGroupedDiff, getGroupedDiffBy)
import Data.List           (break, cycle, delete, deleteBy, deleteFirstsBy,
                            drop, dropWhile, dropWhileEnd, elemIndex,
                            elemIndices, filter, findIndex, findIndices,
                            genericDrop, genericIndex, genericLength,
                            genericReplicate, genericSplitAt, genericTake,
                            group, groupBy, inits, insert, insertBy,
                            intercalate, intersect, intersectBy, intersperse,
                            isInfixOf, isPrefixOf, isSubsequenceOf, isSuffixOf,
                            iterate, lines, lookup, map, nub, nubBy, partition,
                            permutations, repeat, replicate, reverse, scanl,
                            scanl', scanl1, scanr, scanr1, sort, sortBy, sortOn,
                            span, splitAt, stripPrefix, subsequences, tails,
                            take, takeWhile, transpose, uncons, unfoldr, union,
                            unionBy, unlines, unwords, unzip, unzip3, unzip4,
                            unzip5, unzip6, unzip7, words, zip, zip3, zip4,
                            zip5, zip6, zip7, zipWith, zipWith3, zipWith4,
                            zipWith5, zipWith6, zipWith7, (++), (\\))
#if MIN_VERSION_base(4,11,0)
import Data.List (iterate')
#endif
import Data.List.Extra (allSame, anySame, breakEnd, breakOn, breakOnEnd, cons,
                        disjoint, dropEnd, dropPrefix, dropSuffix, groupOn,
                        groupSort, groupSortBy, groupSortOn, lower, nubOn,
                        nubOrd, nubOrdBy, nubOrdOn, nubSort, nubSortBy,
                        nubSortOn, snoc, spanEnd, split, splitAtEnd, stripInfix,
                        stripInfixEnd, stripSuffix, takeEnd, takeWhileEnd, trim,
                        trimEnd, trimStart, unsnoc, upper, wordsBy)
import Data.List.Lens  (prefixed, suffixed)
import Data.List.Split (chop, divvy, endBy, splitOn)
import Data.String     (IsString(fromString), String)
import GHC.Show        (showString)
import Numeric         (lexDigits)
import Safe            (foldl1May', foldr1May, headMay, initMay, lastMay,
                        maximumByMay, maximumMay, minimumByMay, minimumMay,
                        tailMay)
