{-# language CPP #-}

module Mitchell.Prelude
  ( -- * Ala.Identity
    Identity(..)
    -- * Alternative
  , Alternative((<|>), empty)
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
  , ByteString
    -- * Category
  , Category(..)
  , (>>>)
  , (<<<)
    -- * Char
  , Char
#if MIN_VERSION_base(4,11,0)
    -- * Clock
  , getMonotonicTime
  , getMonotonicTimeNSec
#endif
    -- * Coerce
  , Coercible
  , coerce
    -- * Debug
  , trace
  , traceId
  , traceShow
  , traceShowId
  , traceStack
  , traceM
  , traceShowM
    -- * Either
  , Either(Left, Right)
  , either
  , eitherM
  , _Left
  , _Right
    -- * Enum
  , Enum(..)
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
  , hGetLine
  , hGetContents
  , putStr
  , putStrLn
  , print
  , hPutStr
  , hPutStrLn
  , hPrint
    -- * Foldable
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
  , foldMapBy
  , foldBy
    -- * Function
  , ($)
  , ($!)
  , (&)
  , const
  , fix
  , flip
  , until
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
    -- * Hashable
  , Hashable
    -- * IO
  , IO
  , MonadIO(..)
    -- * List
  , (++)
  , cycle
  , iterate
#if MIN_VERSION_base(4,11,0)
  , iterate'
#endif
  , map
  , repeat
  , replicate
  , scanl
  , scanl'
  , scanl1
  , scanr
  , scanr1
  , unfoldr
    -- * Map
  , Map
    -- * Map.Hash
  , HashMap
    -- * Map.Int
  , IntMap
    -- * Maybe
  , Maybe(..)
  , maybe
  , maybeM
  , fromMaybe
  , catMaybes
  , mapMaybe
  , _Nothing
  , _Just
    -- * Monad
  , Monad(..)
  , (=<<)
  , (>=>)
  , (<=<)
  , join
  , unlessM
  , whenJustM
  , whenM
  , whileM
    -- * Monad.Trans
  , MonadTrans(..)
    -- * Monoid
  , Monoid
  , mconcat
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
  , Int8
  , Int16
  , Int32
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
  , Word8
  , Word16
  , Word32
  , Word64
    -- * Optic.Fold
  , (^?)
  , preview
  , has
  , folded
    -- * Optic.Getting
  , (^.)
  , view
    -- * Optic.Lens
  , Lens
  , Lens'
  , lens
    -- * Optic.Lens.At
  , At(..)
    -- * Optic.Prism
  , Prism
  , prism
  , is
    -- * Optic.Setter
  , (.~)
  , (%~)
  , over
  , set
    -- * Optic.Traversal
  , Traversal
    -- * Optic.Traversal.Ixed
  , Ixed(..)
  , Index
  , IxValue
    -- * Ord
  , Ord(..)
  , Ordering(..)
    -- * Semigroup
  , Semigroup(..)
    -- * Sequence
  , Seq
    -- * Set
  , Set
    -- * Set.Hash
  , HashSet
    -- * Set.Int
  , IntSet
    -- * Show
  , Show(show)
    -- * Text
  , Text
    -- * Traversable
  , Traversable(..)
  , for
    -- * Tuple
  , fst
  , snd
  , Field1(..)
  , Field2(..)
  , Field3(..)
  , Field4(..)
  , Field5(..)
  , Field6(..)
    -- * Void
  , Void
  ) where

import Ala.Identity (Identity(Identity, runIdentity))
import Alternative (Alternative((<|>), empty), guard, optional)
import Applicative
  (Applicative, (<*>), (<*), (*>), filterM, forever, liftA2, liftA3, pure,
    replicateM, replicateM_, unless, when, zipWithM, zipWithM_)
import Bool (Bool(False, True), (&&), (||), otherwise, not)
import Bounded (Bounded(maxBound, minBound))
import ByteString (ByteString)
import Category (Category((.), id), (<<<), (>>>))
import Char (Char)
#if MIN_VERSION_base(4,11,0)
import Clock (getMonotonicTime, getMonotonicTimeNSec)
#endif
import Coerce (Coercible, coerce)
import Debug
  (trace, traceId, traceM, traceShow, traceShowId, traceShowM, traceStack)
import Either (Either(Left, Right), either)
import Either (eitherM)
import Either (_Left, _Right)
import Enum
  (Enum(enumFrom, enumFromThen, enumFromThenTo, enumFromTo, fromEnum, pred,
    succ, toEnum))
import Equality (Eq((==), (/=)))
import Error (assert, error, undefined)
import Exception
  (Exception, SomeAsyncException(SomeAsyncException),
    SomeException(SomeException), throwIO)
import File (stderr, stdin, stdout)
import File.Text (hGetChar, hPrint, print)
import File.Text (hGetContents, hGetLine, hPutStr, hPutStrLn, putStr, putStrLn)
import Foldable
  (Foldable(elem, fold, foldMap, foldl', foldr, foldr', length, null, product,
    sum, toList), all, and, asum, concatMap, find, foldM, foldM_, foldlM,
    foldrM, for_, or, msum, notElem, sequenceA_, traverse_)
import Foldable (foldBy, foldMapBy)
import Function (Endo(Endo, appEndo), ($), ($!), (&), const, fix, flip, until)
import Functor (Functor((<$), fmap), ($>), (<$>), (<&>), void)
import Generic (Generic)
import Hashable (Hashable)
import IO (IO, MonadIO(liftIO))
import List
  ((++), cycle, iterate, map, repeat, replicate, scanl, scanl', scanl1, scanr,
    scanr1, unfoldr)
#if MIN_VERSION_base(4,11,0)
import List (iterate')
#endif
import Map (Map)
import Map.Hash (HashMap)
import Map.Int (IntMap)
import Maybe (Maybe(Just, Nothing), maybe, fromMaybe, catMaybes, mapMaybe)
import Maybe (maybeM)
import Maybe (_Just, _Nothing)
import Monad (Monad((>>=)), (=<<), (>=>), (<=<), join)
import Monad (unlessM, whenJustM, whenM, whileM)
import Monad.Trans (MonadTrans(lift))
import Monoid (Monoid, mconcat, mempty)
import Numeric.Double (Double)
import Numeric.Float (Float)
import Numeric.Floating (Floating(..))
import Numeric.Fractional (Fractional(..))
import Numeric.Int (Int, Int8, Int16, Int32, Int64)
import Numeric.Integer (Integer)
import Numeric.Integral (Integral(..), even, fromIntegral, gcd, lcm, odd)
import Numeric.Nat (KnownNat, SomeNat(..), Nat, natVal, natVal', someNatVal)
import Numeric.Num (Num(..), subtract)
import Numeric.Real (Real(..), div', divMod', mod', realToFrac)
import Numeric.RealFloat (RealFloat(..))
import Numeric.RealFrac (RealFrac(..))
import Numeric.Word (Word, Word8, Word16, Word32, Word64)
import Optic.Fold ((^?), folded, has, preview)
import Optic.Getting ((^.), view)
import Optic.Lens (Lens, Lens', lens)
import Optic.Lens.At (At(at))
import Optic.Prism (Prism, is, prism)
import Optic.Setter ((.~), (%~), over, set)
import Optic.Traversal (Traversal)
import Optic.Traversal.Ixed (Index, Ixed(ix), IxValue)
import Ord (Ord((<), (<=), (>), (>=), compare, max, min), Ordering(EQ, GT, LT))
import Semigroup (Semigroup((<>)))
import Sequence (Seq)
import Set (Set)
import Set.Int (IntSet)
import Set.Hash (HashSet)
import Show (Show, show)
import Text (Text)
import Traversable (Traversable(sequenceA, traverse), for)
import Tuple (fst, snd)
import Tuple
  (Field1(_1), Field2(_2), Field3(_3), Field4(_4), Field5(_5), Field6(_6))
import Void (Void)
