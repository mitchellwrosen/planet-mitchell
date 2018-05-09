{-# language CPP #-}

module Eval
  ( -- * Weak head normal form
    seq,
    lazy,
    ($!),
    evaluate,
    -- * Normal form
#ifdef USE_NF
    NF,
    makeNF,
    getNF,
#endif
#ifdef USE_DEEPSEQ
    NFData(..),
    deepseq,
    force,
    ($!!),
    (<$!!>),
    rwhnf,
    NFData1(..),
    rnf1,
    NFData2(..),
    rnf2,
#endif
#ifdef USE_PARALLEL
    -- * Evaluation strategies
    Eval,
    runEval,
    Strategy,
    using,
    withStrategy,
    dot,
    rseq,
    rdeepseq,
    evalTraversable,
    evalList,
    evalTuple2,
    evalTuple3,
    evalTuple4,
    evalTuple5,
    evalTuple6,
    evalTuple7,
    evalTuple8,
    evalTuple9,
#endif
  ) where

#ifdef USE_DEEPSEQ
import Control.DeepSeq
#endif
import Control.Exception
#ifdef USE_PARALLEL
import Control.Parallel.Strategies hiding (rwhnf)
#endif
#ifdef USE_NF
import Data.NF
#endif
import GHC.Base
