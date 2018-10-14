module Parallelism
  ( par
  , pseq
  , rpar
  , rparWith
  , parEval
  , parTraversable
  , parList
  , parListChunk
  , parMap
  , parTuple2
  , parTuple3
  , parTuple4
  , parTuple5
  , parTuple6
  , parTuple7
  , parTuple8
  , parTuple9
    -- * Re-exports
  , module Eval
  ) where

import Control.Parallel.Strategies
import GHC.Conc

-- Re-exports
import Eval
