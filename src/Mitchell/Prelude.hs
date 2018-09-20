{-# language CPP #-}

module Mitchell.Prelude
  ( -- * Ala.Identity
    Identity(..),
    -- * Alternative
    Alternative((<|>), empty),
    guard,
    optional,
    -- * Applicative
    Applicative(..),
    filterM,
    forever,
    liftA3,
    replicateM,
    replicateM_,
    unless,
    when,
    zipWithM,
    zipWithM_,
    -- * Bool
    Bool(..),
    (&&),
    (||),
    not,
    otherwise,
    -- * Bounded
    Bounded(..),
#ifdef DEP_BYTESTRING
    ByteString,
#endif
    -- * Category
    Category(..),
    (>>>),
    (<<<),
#ifdef DEP_REFLECTION
    foldMapBy,
    foldBy,
#endif
    -- * Char
    Char,
#if MIN_VERSION_base(4,11,0)
    -- * Clock
    getMonotonicTime,
    getMonotonicTimeNSec,
#endif
    -- * Coerce
    Coercible,
    coerce,
    -- * Debug
    trace,
    traceId,
    traceShow,
    traceShowId,
    traceStack,
    traceM,
    traceShowM,
    -- * Either
    Either(Left, Right),
    either,
#ifdef DEP_EXTRA
    eitherM,
#endif
#ifdef DEP_LENS
    _Left,
    _Right,
#endif
    -- * Enum
    Enum(..),
    -- * Equality
    Eq(..),
    -- * Error
    assert,
    error,
    undefined,
    -- * Exception
    Exception,
    SomeException(..),
    SomeAsyncException(..),
    throwIO,
    -- * File
    stdin,
    stdout,
    stderr,
    -- * File.Text
    hGetChar,
#ifdef DEP_TEXT
    hGetLine,
    hGetContents,
    putStr,
    putStrLn,
#endif
    print,
#ifdef DEP_TEXT
    hPutStr,
    hPutStrLn,
#endif
    hPrint,
    -- * Foldable
    Foldable(..),
    foldrM,
    foldlM,
    traverse_,
    for_,
    sequenceA_,
    asum,
    msum,
    concatMap,
    and,
    or,
    all,
    notElem,
    find,
    foldM,
    foldM_,
    -- * Function
    ($),
    ($!),
    (&),
    const,
    fix,
    flip,
    until,
    Endo(..),
    -- * Functor
    Functor(..),
    (<$>),
    ($>),
#if MIN_VERSION_base(4,11,0)
    (<&>),
#endif
    void,
    -- * Generic
    Generic,
#ifdef DEP_HASHABLE
    -- * Hashable
    Hashable,
#endif
    -- * IO
    IO,
    MonadIO(..),
    -- * List
    (++),
    cycle,
    iterate,
#if MIN_VERSION_base(4,11,0)
    iterate',
#endif
    map,
    repeat,
    replicate,
    scanl,
    scanl',
    scanl1,
    scanr,
    scanr1,
    unfoldr,
#ifdef DEP_CONTAINERS
    -- * Map
    Map,
#endif
#ifdef DEP_UNORDERED_CONTAINERS
    -- * Map.Hash
    HashMap,
#endif
#ifdef DEP_CONTAINERS
    -- * Map.Int
    IntMap,
#endif
    -- * Maybe
    Maybe(..),
    maybe,
#ifdef DEP_EXTRA
    maybeM,
#endif
    fromMaybe,
    catMaybes,
    mapMaybe,
#ifdef DEP_LENS
    _Nothing,
    _Just,
#endif
    -- * Monad
    Monad(..),
    (=<<),
    (>=>),
    (<=<),
    join,
#ifdef DEP_EXTRA
    unlessM,
    whenJustM,
    whenM,
    whileM,
#endif
#ifdef DEP_TRANSFORMERS
    -- * Monad.Trans
    MonadTrans(..),
#endif
    -- * Monoid
    Monoid,
    mconcat,
    mempty,
    -- * Numeric.Double
    Double,
    -- * Numeric.Float
    Float,
    -- * Numeric.Floating
    Floating(..),
    -- * Numeric.Fractional
    Fractional(..),
    -- * Numeric.Int
    Int,
    -- * Numeric.Int8
    Int8,
    -- * Numeric.Int16
    Int16,
    -- * Numeric.Int32
    Int32,
    -- * Numeric.Int64
    Int64,
    -- * Numeric.Integer
    Integer,
    -- * Numeric.Integral
    Integral(..),
    even,
    odd,
    gcd,
    lcm,
    fromIntegral,
    -- * Numeric.Nat
    Nat,
    KnownNat,
    natVal,
    natVal',
    SomeNat(..),
    someNatVal,
    -- * Numeric.Num
    Num(..),
    subtract,
    -- * Numeric.Real
    Real(..),
    div',
    mod',
    divMod',
    realToFrac,
    -- * Numeric.RealFloat
    RealFloat(..),
    -- * Numeric.RealFrac
    RealFrac(..),
    -- * Numeric.Word
    Word,
    -- * Numeric.Word8
    Word8,
    -- * Numeric.Word16
    Word16,
    -- * Numeric.Word32
    Word32,
    -- * Numeric.Word64
    Word64,
#ifdef DEP_LENS
    -- * Optic.Fold
    (^?),
    preview,
    has,
    folded,
    -- * Optic.Getting
    (^.),
    view,
    -- * Optic.Lens
    Lens,
    Lens',
    lens,
    -- * Optic.Lens.At
    At(..),
    -- * Optic.Prism
    Prism,
    prism,
    is,
    -- * Optic.Setter
    (.~),
    (%~),
    over,
    set,
    -- * Optic.Traversal
    Traversal,
    -- * Optic.Traversal.Ixed
    Ixed(..),
    Index,
    IxValue,
#endif
    -- * Ord
    Ord(..),
    Ordering(..),
    -- * Semigroup
    Semigroup(..),
#ifdef DEP_CONTAINERS
    -- * Sequence
    Seq,
    -- * Set
    Set,
#endif
#ifdef DEP_UNORDERED_CONTAINERS
    -- * Set.Hash
    HashSet,
#endif
#ifdef DEP_CONTAINERS
    -- * Set.Int
    IntSet,
#endif
    -- * Show
    Show(show),
#ifdef DEP_TEXT
    -- * Text
    Text,
#endif
    -- * Traversable
    Traversable(..),
    for,
    -- * Tuple
    fst,
    snd,
#ifdef DEP_LENS
    Field1(..),
    Field2(..),
    Field3(..),
    Field4(..),
    Field5(..),
    Field6(..),
#endif
    -- * Void
    Void,
  ) where

import Ala.Identity (Identity(Identity, runIdentity))
import Alternative (Alternative((<|>), empty), guard, optional)
import Applicative
  (Applicative, (<*>), (<*), (*>), filterM, forever, liftA2, liftA3, pure,
    replicateM, replicateM_, unless, when, zipWithM, zipWithM_)
import Bool (Bool(False, True), (&&), (||), otherwise, not)
import Bounded (Bounded(maxBound, minBound))
#ifdef DEP_BYTESTRING
import ByteString (ByteString)
#endif
import Category (Category((.), id), (<<<), (>>>))
import Char (Char)
#if MIN_VERSION_base(4,11,0)
import Clock (getMonotonicTime, getMonotonicTimeNSec)
#endif
import Coerce (Coercible, coerce)
import Debug
  (trace, traceId, traceM, traceShow, traceShowId, traceShowM, traceStack)
import Either (Either(Left, Right), either)
#ifdef DEP_EXTRA
import Either (eitherM)
#endif
#ifdef DEP_LENS
import Either (_Left, _Right)
#endif
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
#ifdef DEP_TEXT
import File.Text (hGetContents, hGetLine, hPutStr, hPutStrLn, putStr, putStrLn)
#endif
import Foldable
  (Foldable(elem, fold, foldMap, foldl', foldr, foldr', length, null, product,
    sum, toList), all, and, asum, concatMap, find, foldBy, foldM, foldM_,
    foldMapBy, foldlM, foldrM, for_, or, msum, notElem, sequenceA_, traverse_,)
import Function (Endo(Endo, appEndo), ($), ($!), (&), const, fix, flip, until)
import Functor (Functor((<$), fmap), ($>), (<$>), (<&>), void)
import Generic (Generic)
#ifdef DEP_HASHABLE
import Hashable (Hashable)
#endif
import IO (IO, MonadIO(liftIO))
import List
  ((++), cycle, iterate, map, repeat, replicate, scanl, scanl', scanl1, scanr,
    scanr1, unfoldr)
#if MIN_VERSION_base(4,11,0)
import List (iterate')
#endif
#ifdef DEP_CONTAINERS
import Map (Map)
#endif
#ifdef DEP_UNORDERED_CONTAINERS
import Map.Hash (HashMap)
#endif
#ifdef DEP_CONTAINERS
import Map.Int (IntMap)
#endif
import Maybe (Maybe(Just, Nothing), maybe, fromMaybe, catMaybes, mapMaybe)
#ifdef DEP_EXTRA
import Maybe (maybeM)
#endif
#ifdef DEP_LENS
import Maybe (_Just, _Nothing)
#endif
import Monad (Monad((>>=)), (=<<), (>=>), (<=<), join)
#ifdef DEP_EXTRA
import Monad (unlessM, whenJustM, whenM, whileM)
#endif
#ifdef DEP_TRANSFORMERS
import Monad.Trans (MonadTrans(lift))
#endif
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
#ifdef DEP_LENS
import Optic.Fold ((^?), folded, has, preview)
import Optic.Getting ((^.), view)
import Optic.Lens (Lens, Lens', lens)
import Optic.Lens.At (At(at))
import Optic.Prism (Prism, is, prism)
import Optic.Setter ((.~), (%~), over, set)
import Optic.Traversal (Traversal)
import Optic.Traversal.Ixed (Index, Ixed(ix), IxValue)
#endif
import Ord (Ord((<), (<=), (>), (>=), compare, max, min), Ordering(EQ, GT, LT))
import Semigroup (Semigroup((<>)))
#ifdef DEP_CONTAINERS
import Sequence (Seq)
import Set (Set)
import Set.Int (IntSet)
#endif
#ifdef DEP_UNORDERED_CONTAINERS
import Set.Hash (HashSet)
#endif
import Show (Show, show)
#ifdef DEP_TEXT
import Text (Text)
#endif
import Traversable (Traversable(sequenceA, traverse), for)
import Tuple (fst, snd)
#ifdef DEP_LENS
import Tuple
  (Field1(_1), Field2(_2), Field3(_3), Field4(_4), Field5(_5), Field6(_6))
#endif
import Void (Void)
