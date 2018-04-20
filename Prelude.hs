{-# language CPP                #-}
{-# language ExplicitNamespaces #-}
{-# language PackageImports     #-}

module Prelude
  ( -- * Alternative
    Alternative(..)
  , guard
  , optional
    -- * Applicative
  , Applicative(..)
  , filterM
  , forever
  , liftA3
  , replicateM
  , replicateM_
  , unless
  , when
  , whenJust
  , zipWithM
  , zipWithM_
    -- * ByteString
  , ByteString
    -- * Category
  , module Category
  , Foldable(..)
  , foldrM
  , foldlM
  , traverse_
  , for_
  , sequenceA_
  , asum
  , mapM_
  , forM_
  , sequence_
  , msum
  , concat
  , concatMap
  , and
  , or
  , all
  , notElem
  , find
  , foldM
  , foldM_
  , foldMapBy
  , foldBy
    -- * Foldl
  , module Foldl
    -- * Function
  , const
  , flip
  , ($)
  , ($!)
  , (&)
  , until
  , fix
  , Endo(..)
    -- * Functor
  , void
    -- * IO
  , IO
    -- * List
  , (++)
  , (!!)
  , (\\)
  , allSame
  , anySame
  , break
  , breakOn
  , breakOnEnd
  , breakEnd
  , chunksOf
  , cons
  , cycle
  , delete
  , deleteBy
  , deleteFirstsBy
  , disjoint
  , drop
  , dropEnd
  , dropPrefix
  , dropSuffix
  , dropWhile
  , dropWhileEnd
  , elemIndex
  , elemIndices
  , filter
  , findIndex
  , findIndices
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
  , lines
  , lookup
  , map
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
  , snoc
  , stripInfix
  , stripInfixEnd
  , stripPrefix
  , stripSuffix
  , subsequences
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
  , unlines
  , unsnoc
  , unwords
  , unzip
  , unzip3
  , unzip4
  , unzip5
  , unzip6
  , unzip7
  , words
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
    -- * Monad
  , module Monad
    -- * Number
  , Int
  , Int8
  , Int16
  , Int32
  , Int64
  , Integer
  , Natural
  , Ratio
  , Rational
  , numerator
  , denominator
  , Word
  , Word8
  , Word16
  , Word32
  , Word64
  , Float
  , Double
  , Complex
    -- * Numeric type classes
  , Num(..)
  , subtract
  , fromIntegral
  , Real(..)
  , realToFrac
  , div'
  , mod'
  , divMod'
  , Integral(..)
  , even
  , odd
  , gcd
  , lcm
  , Fractional(..)
  , Floating(..)
  , RealFrac(..)
  , RealFloat(..)
  , fromRat
  , Erf(..)
  , InvErf(..)
  , Nat
  , KnownNat
  , natVal
  , natVal'
  , SomeNat(..)
  , someNatVal
  , sameNat
  , type (<=)
  , type (<=?)
  , type (+)
  , type (*)
  , type (^)
  , type (-)
  , Min
  , Max
  , Lcm
  , Gcd
  , Divides
#if MIN_VERSION_base(4,11,0)
  , Div
  , Mod
  , Log2
#endif
  , CmpNat
    -- * Show
  , Show(..)
    -- * Tuple
  , fst
  , snd
  , curry
  , uncurry
  ) where

import Alternative
import Applicative
import ByteString (ByteString)
import Category
import Foldl (Fold(..), FoldM(..))
import Foldable
import Function
import Functor
import IO
import List
import Monad
import Number
import Show
import Tuple
