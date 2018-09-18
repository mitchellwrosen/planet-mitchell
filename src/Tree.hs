{-# language CPP #-}

module Tree
  ( module Data.Tree,
#ifdef DEP_FGL
    postorder,
    postorderF,
    preorder,
    preorderF,
#endif
  ) where

import Data.Tree
#ifdef DEP_FGL
import Data.Graph.Inductive.Basic
#endif
