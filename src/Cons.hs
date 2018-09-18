{-# language PatternSynonyms #-}

module Cons
  ( -- * Cons
    Cons,
    _Cons,
    (<|),
    cons,
    uncons,
    _head,
    _tail,
    pattern (:<),
    -- * Snoc
    Snoc,
    _Snoc,
    (|>),
    snoc,
    unsnoc,
    _init,
    _last,
    pattern (:>),
  ) where

import Control.Lens.Cons
