{-# language CPP #-}

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
#ifdef USE_EXTRA
  , whenJust
#endif
  , zipWithM
  , zipWithM_
    -- * Bool
  , Bool(..)
  , (&&)
  , (||)
  , not
  , otherwise
    -- * Bounded
  , Bounded(..)
#ifdef USE_BYTESTRING
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
  , msum
  , concatMap
  , and
  , or
  , all
  , notElem
  , find
  , foldM
  , foldM_
#ifdef USE_REFLECTION
  , foldMapBy
  , foldBy
#endif
    -- * Char
  , Char
    -- * Concurrency
  , forkIO
  , threadDelay
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
    -- * Exception
  , Exception
  , SomeException(..)
  , SomeAsyncException(..)
  , throwIO
    -- * File
  , stdin
  , stdout
  , stderr
    -- * File.Text
  , hGetChar
#ifdef USE_TEXT
  , hGetLine
  , hGetContents
  , putStr
  , putStrLn
#endif
  , print
#ifdef USE_TEXT
  , hPutStr
  , hPutStrLn
#endif
  , hPrint
#ifdef USE_FOLDL
    -- * Foldl
  , Fold(..)
  , FoldM(..)
#endif
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
    -- * Generic
  , Generic
#ifdef USE_UNORDERED_CONTAINERS
    -- * HashMap
  , HashMap
    -- * HashSet
  , HashSet
#endif
#ifdef USE_CONTAINERS
    -- * IntMap
  , IntMap
    -- * IntSet
  , IntSet
#endif
    -- * IO
  , IO
    -- * IORef
  , IORef
    -- * List
  , (++)
  , break
#ifdef USE_EXTRA
  , breakOn
  , breakOnEnd
  , breakEnd
  , chunksOf
#endif
  , cycle
  , drop
#ifdef USE_EXTRA
  , dropEnd
  , dropPrefix
  , dropSuffix
#endif
  , dropWhile
  , dropWhileEnd
  , filter
  , inits
  , intercalate
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
  , nub
  , nubBy
#ifdef USE_EXTRA
  , nubOn
  , nubOrd
  , nubOrdBy
  , nubOrdOn
  , nubSort
  , nubSortBy
  , nubSortOn
#endif
  , map
  , partition
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
#ifdef USE_EXTRA
  , spanEnd
  , split
#endif
  , splitAt
#ifdef USE_EXTRA
  , splitAtEnd
  , stripInfix
  , stripInfixEnd
#endif
  , stripPrefix
#ifdef USE_EXTRA
  , stripSuffix
#endif
  , tails
  , take
#ifdef USE_EXTRA
  , takeEnd
#endif
  , takeWhile
#ifdef USE_EXTRA
  , takeWhileEnd
#endif
  , unfoldr
  , unzip
  , unzip3
  , zip
  , zip3
  , zipWith
  , zipWith3
#ifdef USE_LIST_TRANSFORMER
    -- * ListT
  , ListT
#endif
#ifdef USE_CONTAINERS
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
  , MonadIO(..)
#ifdef USE_TRANSFORMERS
    -- * MonadTrans
  , MonadTrans(..)
#endif
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
    -- * Ord
  , Ord(..)
  , Ordering(..)
    -- * Semigroup
  , Semigroup(..)
#ifdef USE_CONTAINERS
    -- * Sequence
  , Seq
    -- * Set
  , Set
#endif
    -- * Show
  , Show(..)
#ifdef USE_TEXT
    -- * Text
  , Text
#endif
    -- * Traversable
  , Traversable
  , traverse
  , sequenceA
  , for
    -- * Tuple
  , fst
  , snd
  ) where

import Alternative (Alternative(..), guard, optional)
import Applicative
import Bool (Bool(..), (&&), (||), otherwise, not)
import Bounded (Bounded(..))
#ifdef USE_BYTESTRING
import ByteString (ByteString)
#endif
import Category (Category(..), (<<<), (>>>))
import Char (Char)
import Concurrency (forkIO, threadDelay)
import Debug
  (trace, traceId, traceM, traceShow, traceShowId, traceShowM, traceStack)
import Equality (Eq(..))
import Error
import Exception (Exception, SomeAsyncException(..), SomeException(..), throwIO)
import File (stderr, stdin, stdout)
import File.Text (hGetChar, hPrint, print)
#ifdef USE_TEXT
import File.Text (hGetContents, hGetLine, hPutStr, hPutStrLn, putStr, putStrLn)
#endif
#ifdef USE_FOLDL
import Foldl (Fold(..), FoldM(..))
#endif
import Foldable
import Function
import Functor
import Generic (Generic)
#ifdef USE_UNORDERED_CONTAINERS
import HashMap (HashMap)
import HashSet (HashSet)
#endif
#ifdef USE_CONTAINERS
import IntMap (IntMap)
import IntSet (IntSet)
#endif
import IO
import IORef (IORef)
import List
#ifdef USE_LIST_TRANSFORMER
import ListT (ListT)
#endif
#ifdef USE_CONTAINERS
import Map (Map)
#endif
import Maybe
import Monad
import MonadIO (MonadIO(..))
#ifdef USE_TRANSFORMERS
import MonadTrans (MonadTrans(..))
#endif
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
import Ord (Ord(..), Ordering(..))
import Semigroup
#ifdef USE_CONTAINERS
import Sequence (Seq)
import Set (Set)
#endif
import Show
#ifdef USE_TEXT
import Text (Text)
#endif
import Traversable (Traversable, for, sequenceA, traverse)
import Tuple
