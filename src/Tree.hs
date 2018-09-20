module Tree
  ( module Data.Tree
  , postorder
  , postorderF
  , preorder
  , preorderF
    -- ** Optics
  , root
  , branches
  ) where

import Data.Graph.Inductive.Basic (postorder, postorderF, preorder, preorderF)
import Data.Tree
import Data.Tree.Lens             (branches, root)
