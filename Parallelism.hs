module Parallelism
  ( par
  , pseq
  , rpar
  , rparWith
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
  , module Eval
  ) where

import GHC.Conc
import Control.Parallel.Strategies
import Eval
