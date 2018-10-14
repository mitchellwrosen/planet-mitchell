{-# LANGUAGE PatternSynonyms #-}

module Optic.Prism
  ( -- * Prism
    Prism
  , Prism'
  , prism
  , prism'
  , is
  , only
    -- * AsAny
  , AsAny(..)
    -- * AsSubtype
  , AsSubtype(..)
    -- * Cons
  , Cons(..)
  , (<|)
  , cons
  , uncons
  , _head
  , _tail
  , pattern (:<)
    -- * Snoc
  , Snoc(..)
  , (|>)
  , snoc
  , unsnoc
  , _init
  , _last
  , pattern (:>)
    -- * Empty
  , AsEmpty(..)
  , pattern Empty
  ) where

import Control.Lens.Cons         (pattern (:<), pattern (:>), Cons(_Cons),
                                  Snoc(_Snoc), cons, snoc, uncons, unsnoc, (<|),
                                  _head, _init, _last, _tail, (|>))
import Control.Lens.Empty        (AsEmpty(_Empty), pattern Empty)
import Control.Lens.Extras       (is)
import Control.Lens.Prism        (Prism, Prism', only, prism, prism')
import Data.Generics.Sum.Any     (AsAny(_As))
import Data.Generics.Sum.Subtype (AsSubtype(_Sub))
