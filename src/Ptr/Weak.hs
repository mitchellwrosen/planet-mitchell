module Ptr.Weak
  ( Weak
  , mkWeak
  , deRefWeak
  , finalize
  , mkWeakPtr
  , addFinalizer
  , mkWeakPair
  ) where

import System.Mem.Weak
