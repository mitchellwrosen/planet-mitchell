{-# LANGUAGE PatternSynonyms #-}

module Optic.Prism.Snoc
  ( -- * Snoc
    Snoc(..)
  , (|>)
  , snoc
  , unsnoc
  , _init
  , _last
  , pattern (:>)
  ) where

import Control.Lens.Cons (pattern (:>), Snoc(_Snoc), snoc, unsnoc, _init, _last,
                          (|>))
