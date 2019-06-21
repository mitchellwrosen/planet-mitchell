{-# LANGUAGE CPP #-}

module Mitchell.Prelude
  ( -- * Ala.Identity
    Identity(..)
    -- * Alg.Applicative
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
  , Alternative((<|>), empty)
  , guard
  , optional
    -- * Alg.Category
  , Category(..)
  , (>>>)
  , (<<<)
    -- * Alg.Contravariant
  , Contravariant(..)
    -- * Alg.Functor
  , Functor(..)
  , (<$>)
  , ($>)
#if MIN_VERSION_base(4,11,0)
  , (<&>)
#endif
  , void
    -- * Alg.Monad
  , Monad(..)
  , (=<<)
  , (>=>)
  , (<=<)
  , unlessM
  , whenJustM
  , whenM
  , whileM
    -- * Alg.Monad.Trans
  , MonadTrans(..)
    -- * Alg.Monoid
  , Monoid
  , mconcat
  , mempty
    -- * Alg.Semigroup
  , Semigroup(..)
    -- * Bool
  , Bool(..)
  , (&&)
  , (||)
  , not
  , otherwise
    -- * Alg.Traversable
  , Traversable(..)
  , for
    -- * Bounded
  , Bounded(..)
  , ByteString
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
    -- * Compactable
  , Compactable(..)
  , fforMaybe
  , fforEither
    -- * Debug
  , trace
  , traceId
  , traceShow
  , traceShowId
  , traceStack
  , traceM
  , traceShowM
    -- * Eff.Mtl.Reader
  , view
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
  , putStrLn
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
  , any
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
    -- * Generic
  , Generic
  , AsAny(..)
  , HasAny(..)
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
    -- * Num.Double
  , Double
    -- * Num.Float
  , Float
    -- * Num.Floating
  , Floating(..)
    -- * Num.Fractional
  , Fractional(..)
  , (^^)
    -- * Num.Int
  , Int
  , Int8
  , Int16
  , Int32
  , Int64
    -- * Num.Integer
  , Integer
    -- * Num.Integral
  , Integral(..)
  , even
  , odd
  , gcd
  , lcm
  , fromIntegral
    -- * Num.Nat
  , Nat
  , KnownNat
  , natVal
  , natVal'
  , SomeNat(..)
  , someNatVal
    -- * Num.Num
  , Num(..)
  , (^)
  , subtract
    -- * Num.Real
  , Real(..)
  , div'
  , mod'
  , divMod'
  , realToFrac
    -- * Num.RealFloat
  , RealFloat(..)
    -- * Num.RealFrac
  , RealFrac(..)
    -- * Num.Word
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
    -- * Optic.Lens
  , Lens
  , Lens'
  , lens
  , At(..)
    -- * Optic.Prism
  , Prism
  , Prism'
  , prism
  , is
    -- * Optic.Setter
  , (.~)
  , (%~)
  , over
  , set
    -- * Optic.Traversal
  , Traversal
  , Traversal'
    -- * Ord
  , Ord(..)
  , Ordering(..)
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
    -- * Tuple
  , fst
  , snd
  , Field1(..)
  , Field2(..)
  , Field3(..)
  , Field4(..)
  , Field5(..)
  , Field6(..)
    -- * Type
  , Type
    -- * Void
  , Void
  ) where

import Ala.Identity    (Identity(Identity, runIdentity))
import Alg.Applicative (Alternative(empty, (<|>)), Applicative, filterM,
                        forever, guard, liftA2, liftA3, optional, pure,
                        replicateM, replicateM_, unless, when, zipWithM,
                        zipWithM_, (*>), (<*), (<*>))
import Alg.Category    (Category(id, (.)), (<<<), (>>>))
#if MIN_VERSION_base(4,11,0)
import Alg.Functor ((<&>))
#endif
import Alg.Monad       (Monad((>>=)), unlessM, whenJustM, whenM, whileM, (<=<),
                        (=<<), (>=>))
import Alg.Monad.Trans (MonadTrans(lift))
import Alg.Monoid      (Monoid, mconcat, mempty)
import Alg.Semigroup   (Semigroup((<>)))
import Alg.Traversable (Traversable(sequenceA, traverse), for)
import Bool            (Bool(False, True), not, otherwise, (&&), (||))
import Bounded         (Bounded(maxBound, minBound))
import ByteString      (ByteString)
import Char            (Char)
#if MIN_VERSION_base(4,11,0)
import Clock (getMonotonicTime, getMonotonicTimeNSec)
#endif
import Alg.Contravariant (Contravariant(contramap))
import Alg.Functor       (Functor(fmap, (<$)), void, ($>), (<$>))
import Coerce            (Coercible, coerce)
import Compactable       (Compactable(applyEither, applyMaybe, bindEither, bindMaybe, compact, filter, fmapEither, fmapMaybe, partition, separate, traverseEither, traverseMaybe),
                          fforEither, fforMaybe)
import Debug             (trace, traceId, traceM, traceShow, traceShowId,
                          traceShowM, traceStack)
import Either            (Either(Left, Right), either, eitherM, _Left, _Right)
import Enum              (Enum(enumFrom, enumFromThen, enumFromThenTo, enumFromTo, fromEnum, pred, succ, toEnum))
import Equality          (Eq((/=), (==)))
import Error             (assert, error, undefined)
import Exception         (Exception, SomeAsyncException(SomeAsyncException),
                          SomeException(SomeException), throwIO)
import File              (stderr, stdin, stdout)
import File.Text         (putStrLn)
import Foldable          (Foldable(elem, fold, foldMap, foldl', foldr, foldr', length, null, product, sum, toList),
                          all, and, any, asum, concatMap, find, foldM, foldM_,
                          foldlM, foldrM, for_, msum, notElem, or, sequenceA_,
                          traverse_)
import Foldable          (foldBy, foldMapBy)
import Function          (Endo(Endo, appEndo), const, fix, flip, until, ($),
                          ($!), (&))
import Generic           (AsAny(_As), Generic, HasAny(the))
import Hashable          (Hashable)
import IO                (IO, MonadIO(liftIO))
import List              (cycle, iterate, map, repeat, replicate, scanl, scanl',
                          scanl1, scanr, scanr1, unfoldr, (++))
#if MIN_VERSION_base(4,11,0)
import List (iterate')
#endif
import Map             (Map)
import Map.Hash        (HashMap)
import Map.Int         (IntMap)
import Maybe           (Maybe(Just, Nothing), catMaybes, fromMaybe, mapMaybe,
                        maybe)
import Maybe           (maybeM, _Just, _Nothing)
import Num.Double      (Double)
import Num.Float       (Float)
import Num.Floating    (Floating(..))
import Num.Fractional  (Fractional(..), (^^))
import Num.Int         (Int, Int16, Int32, Int64, Int8)
import Num.Integer     (Integer)
import Num.Integral    (Integral(..), even, fromIntegral, gcd, lcm, odd)
import Num.Nat         (KnownNat, Nat, SomeNat(..), natVal, natVal', someNatVal)
import Num.Num         (Num(..), subtract, (^))
import Num.Real        (Real(..), div', divMod', mod', realToFrac)
import Num.RealFloat   (RealFloat(..))
import Num.RealFrac    (RealFrac(..))
import Num.Word        (Word, Word16, Word32, Word64, Word8)
import Optic.Fold      (folded, has, preview, (^?))
import Optic.Getting   (view, (^.))
import Optic.Lens      (At(at), Lens, Lens', lens)
import Optic.Prism     (Prism, Prism', is, prism)
import Optic.Setter    (over, set, (%~), (.~))
import Optic.Traversal (Traversal, Traversal')
import Ord             (Ord(compare, max, min, (<), (<=), (>), (>=)),
                        Ordering(EQ, GT, LT))
import Sequence        (Seq)
import Set             (Set)
import Set.Hash        (HashSet)
import Set.Int         (IntSet)
import Show            (Show, show)
import Text            (Text)
import Tuple           (Field1(_1), Field2(_2), Field3(_3), Field4(_4),
                        Field5(_5), Field6(_6), fst, snd)
import Type            (Type)
import Void            (Void)
