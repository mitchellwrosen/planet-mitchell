{-# LANGUAGE PatternSynonyms #-}

module Optic.Prism.Cons
  ( -- * Cons
    Cons(..)
  , (<|)
  , cons
  , uncons
  , _head
  , _tail
  , pattern (:<)
  ) where

import Control.Lens.Cons (pattern (:<), Cons(_Cons), cons, uncons, (<|), _head,
                          _tail)
