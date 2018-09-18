{-# language CPP #-}

module Eval
  ( -- * Weak head normal form
    seq,
    lazy,
    ($!),
    evaluate,
#if defined(DEP_NF) || defined(DEP_DEEPSEQ) || defined(DEP_PARALLEL)
    -- * Normal form
#ifdef DEP_NF
    NF,
    makeNF,
    getNF,
#endif
#ifdef DEP_DEEPSEQ
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
#ifdef DEP_PARALLEL
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
#endif
  ) where

#ifdef DEP_DEEPSEQ
import Control.DeepSeq
#endif
import Control.Exception
#ifdef DEP_PARALLEL
import Control.Parallel.Strategies hiding (rwhnf)
#endif
#ifdef DEP_NF
import Data.NF
#endif
import GHC.Base
