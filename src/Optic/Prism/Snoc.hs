{-# language PatternSynonyms #-}

module Optic.Prism.Snoc
  ( -- * Snoc
    Snoc(..),
    (|>),
    snoc,
    unsnoc,
    _init,
    _last,
    pattern (:>),
  ) where

import Control.Lens.Cons
  (Snoc(_Snoc), (|>), snoc, unsnoc, _init, _last, pattern (:>))
