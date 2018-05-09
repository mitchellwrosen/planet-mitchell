{-# language CPP #-}

module Eval
  ( -- * Weak head normal form
    seq,
    lazy,
    ($!),
    evaluate,
    -- * Normal form
    NF,
    makeNF,
    getNF,
#ifdef DEEPSEQ
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
  ) where

#ifdef DEEPSEQ
import Control.DeepSeq
#endif
import Control.Exception
import Control.Parallel.Strategies hiding (rwhnf)
import Data.NF
import GHC.Base
