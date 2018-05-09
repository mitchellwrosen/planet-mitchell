{-# language CPP #-}

module Parallelism
  (
    par,
    pseq,
#ifdef USE_PARALLEL
    rpar,
    rparWith,
    parTraversable,
    parList,
    parListChunk,
    parMap,
    parTuple2,
    parTuple3,
    parTuple4,
    parTuple5,
    parTuple6,
    parTuple7,
    parTuple8,
    parTuple9,
#endif
    module Eval,
  ) where

import GHC.Conc
#ifdef USE_PARALLEL
import Control.Parallel.Strategies
#endif
import Eval
