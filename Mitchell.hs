{-# language CPP #-}

module Mitchell
  ( -- * Alternative
    Alternative(..),
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
#ifdef DEP_EXTRA
    whenJust,
#endif
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
    module Category,
#ifdef DEP_REFLECTION
    foldMapBy,
    foldBy,
#endif
    -- * Char
    Char,
    -- * Concurrency
    forkIO,
    threadDelay,
    STM,
    atomically,
    ThreadId,
    myThreadId,
    -- * Debug
    trace,
    traceId,
    traceShow,
    traceShowId,
    traceStack,
    traceM,
    traceShowM,
    -- * Either
    Either(..),
    either,
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
#ifdef DEP_FOLDL
    -- * Foldl
    Fold(..),
    FoldM(..),
#endif
    -- * Function
    const,
    flip,
    ($),
    ($!),
    (&),
    until,
    fix,
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
    -- * IO
    IO,
    MonadIO(..),
    -- * IORef
    IORef,
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
#ifdef DEP_LIST_TRANSFORMER
    -- * ListT
    ListT,
#endif
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
    isJust,
    isNothing,
    fromMaybe,
    listToMaybe,
    maybeToList,
    catMaybes,
    mapMaybe,
    -- * Monad
    module Monad,
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
    -- * Set.Int
    IntSet,
#endif
#ifdef DEP_UNORDERED_CONTAINERS
    -- * Set.Hash
    HashSet,
#endif
    -- * Show
    Show(..),
#ifdef DEP_TEXT
    -- * Text
    Text,
#endif
    -- * Traversable
    Traversable,
    traverse,
    for,
    sequenceA,
    -- * Tuple
    fst,
    snd,
  ) where

import Alternative (Alternative(..), guard, optional)
import Applicative
import Bool (Bool(..), (&&), (||), otherwise, not)
import Bounded (Bounded(..))
#ifdef DEP_BYTESTRING
import ByteString (ByteString)
#endif
import Category (Category(..), (<<<), (>>>))
import Char (Char)
import Concurrency (STM, ThreadId, atomically, forkIO, myThreadId, threadDelay)
import Debug
  (trace, traceId, traceM, traceShow, traceShowId, traceShowM, traceStack)
import Either (Either(..), either)
import Equality (Eq(..))
import Error
import Exception (Exception, SomeAsyncException(..), SomeException(..), throwIO)
import File (stderr, stdin, stdout)
import File.Text (hGetChar, hPrint, print)
#ifdef DEP_TEXT
import File.Text (hGetContents, hGetLine, hPutStr, hPutStrLn, putStr, putStrLn)
#endif
#ifdef DEP_FOLDL
import Foldl (Fold(..), FoldM(..))
#endif
import Foldable
import Function
import Functor
import Generic (Generic)
import IO
import IORef (IORef)
import List
#ifdef DEP_LIST_TRANSFORMER
import ListT (ListT)
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
import Maybe
import Monad
#ifdef DEP_TRANSFORMERS
import Monad.Trans (MonadTrans(..))
#endif
import Monoid (Monoid, mconcat, mempty)
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
#ifdef DEP_CONTAINERS
import Sequence (Seq)
import Set (Set)
import Set.Int (IntSet)
#endif
#ifdef DEP_UNORDERED_CONTAINERS
import Set.Hash (HashSet)
#endif
import Show
#ifdef DEP_TEXT
import Text (Text)
#endif
import Traversable (Traversable, for, sequenceA, traverse)
import Tuple
