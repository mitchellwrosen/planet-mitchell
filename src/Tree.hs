{-# language CPP #-}

module Tree
  ( module Data.Tree,
#ifdef DEP_FGL
    postorder,
    postorderF,
    preorder,
    preorderF,
#endif
#ifdef DEP_LENS
    -- ** Optics
    root,
    branches,
#endif
  ) where

#ifdef DEP_FGL
import Data.Graph.Inductive.Basic (postorder, postorderF, preorder, preorderF)
#endif
import Data.Tree
#ifdef DEP_LENS
import Data.Tree.Lens (branches, root)
#endif
