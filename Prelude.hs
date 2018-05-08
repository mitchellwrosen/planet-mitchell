{-# language CPP            #-}

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
    -- * Bool
  , Bool(..)
  , (&&)
  , (||)
  , not
  , otherwise
#ifdef BYTESTRING
    -- * ByteString
  , ByteString
#endif
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
    -- * Debug
  , trace
  , traceId
  , traceShow
  , traceShowId
  , traceStack
  , traceM
  , traceShowM
    -- * Equality
  , Eq(..)
    -- * Error
  , assert
  , error
  , undefined
    -- * Foldl
  , Fold(..)
  , FoldM(..)
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
  , Functor(..)
  , (<$>)
  , ($>)
#if MIN_VERSION_base(4,11,0)
  , (<&>)
#endif
  , void
#ifdef CONTAINERS
    -- * IntMap
  , IntMap
    -- * IntSet
  , IntSet
#endif
    -- * IO
  , IO
    -- * List
  , (++)
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
  , unsnoc
  , unzip
  , unzip3
  , unzip4
  , unzip5
  , unzip6
  , unzip7
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
    -- * ListT
  , ListT
#ifdef CONTAINERS
    -- * Map
  , Map
#endif
    -- * Maybe
  , Maybe(..)
  , maybe
  , isJust
  , isNothing
  , fromMaybe
  , listToMaybe
  , maybeToList
  , catMaybes
  , mapMaybe
    -- * Monad
  , module Monad
    -- * MonadIO
  , module MonadIO
    -- * Monoid
  , Monoid
  , mempty
    -- * Numeric.Double
  , Double
    -- * Numeric.Float
  , Float
    -- * Numeric.Floating
  , Floating(..)
    -- * Numeric.Fractional
  , Fractional(..)
    -- * Numeric.Int
  , Int
    -- * Numeric.Int8
  , Int8
    -- * Numeric.Int16
  , Int16
    -- * Numeric.Int32
  , Int32
    -- * Numeric.Int64
  , Int64
    -- * Numeric.Integer
  , Integer
    -- * Numeric.Integral
  , Integral(..)
  , even
  , odd
  , gcd
  , lcm
  , fromIntegral
    -- * Numeric.Nat
  , Nat
  , KnownNat
  , natVal
  , natVal'
  , SomeNat(..)
  , someNatVal
    -- * Numeric.Num
  , Num(..)
  , subtract
    -- * Numeric.Real
  , Real(..)
  , div'
  , mod'
  , divMod'
  , realToFrac
    -- * Numeric.RealFloat
  , RealFloat(..)
    -- * Numeric.RealFrac
  , RealFrac(..)
    -- * Numeric.Word
  , Word
    -- * Numeric.Word8
  , Word8
    -- * Numeric.Word16
  , Word16
    -- * Numeric.Word32
  , Word32
    -- * Numeric.Word64
  , Word64
    -- * Semigroup
  , Semigroup(..)
#ifdef CONTAINERS
    -- * Sequence
  , Seq
    -- * Set
  , Set
#endif
    -- * Show
  , Show(..)
    -- * Text
  , Text
    -- * Tuple
  , fst
  , snd
  , curry
  , uncurry
  ) where

import Alternative
import Applicative
import Bool
#ifdef BYTESTRING
import ByteString (ByteString)
#endif
import Category
import Debug
import Equality (Eq(..))
import Error
import Foldl (Fold(..), FoldM(..))
import Foldable
import Function
import Functor
#ifdef CONTAINERS
import IntMap (IntMap)
import IntSet (IntSet)
#endif
import IO
import List
import ListT (ListT)
#ifdef CONTAINERS
import Map (Map)
#endif
import Maybe
import Monad
import MonadIO
import Monoid
import Numeric.Double (Double)
import Numeric.Float (Float)
import Numeric.Floating (Floating(..))
import Numeric.Fractional (Fractional(..))
import Numeric.Int (Int)
import Numeric.Int8 (Int8)
import Numeric.Int16 (Int16)
import Numeric.Int32 (Int32)
import Numeric.Int64 (Int64)
import Numeric.Integer (Integer)
import Numeric.Integral (Integral(..), even, fromIntegral, gcd, lcm, odd)
import Numeric.Nat (KnownNat, SomeNat(..), Nat, natVal, natVal', someNatVal)
import Numeric.Num (Num(..), subtract)
import Numeric.Real (Real(..), div', divMod', mod', realToFrac)
import Numeric.RealFloat (RealFloat(..))
import Numeric.RealFrac (RealFrac(..))
import Numeric.Word (Word)
import Numeric.Word8 (Word8)
import Numeric.Word16 (Word16)
import Numeric.Word32 (Word32)
import Numeric.Word64 (Word64)
import Semigroup
#ifdef CONTAINERS
import Sequence (Seq)
import Set (Set)
#endif
import Show
import Text (Text)
import Tuple
