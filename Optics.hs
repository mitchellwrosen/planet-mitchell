{-# language PatternSynonyms #-}

module Optics
  ( -- * Fold
    Fold
    -- ** Constructing Folds
  , folded
    -- ** Consuming Folds
  , preview
  , previews
  , preuse
  , preuses
  , has
  , hasn't
  , foldMapOf
  , foldOf
  , foldrOf
  , foldrOf'
  , foldlOf'
  , foldrMOf
  , toListOf
  , anyOf
  , allOf
  , noneOf
  , orOf
  , productOf
  , sumOf
  , traverseOf_
  , forOf_
  , sequenceAOf_
  , asumOf
  , elemOf
  , notElemOf
  , lengthOf
  , nullOf
  , notNullOf
  , firstOf
  , lastOf
  , maximumOf
  , maximumByOf
  , minimumOf
  , minimumByOf
  , findOf
  , findMOf
  , lookupOf
    -- * Getter
  , Getter
  , Getting
    -- ** Constructing Getters
  , to
  , re
    -- * Iso
  , Iso
  , Iso'
  , AnIso
  , AnIso'
    -- ** Constructing Isomorphisms
  , iso
    -- ** Consuming Isomorphisms
  , withIso
  , from
  , au
  , auf
  , under
    -- * Lens
  , Lens
  , Lens'
  , ALens
  , ALens'
    -- ** Constructing Lenses
  , lens
  , inside
    -- * Prism
  , Prism
  , Prism'
  , APrism
  , APrism'
    -- ** Constructing Prisms
  , prism
  , prism'
  , only
    -- ** Consuming Prisms
  , withPrism
  , is
  , isn't
  , matching
  , outside
  , aside
  , below
    -- * Review
  , Review
  , AReview
    -- ** Constructing Reviews
  , unto
  , un
    -- * Setter
  , Setter
  , Setter'
  , ASetter
  , ASetter'
  , Setting
  , Setting'
    -- ** Constructing Setters
  , sets
    -- ** Consuming Setters
  , set
  , over
    -- * Traversal
  , Traversal
  , Traversal'
  , ATraversal
  , ATraversal'
    -- * Consuming Traversals
  , traverseOf
  , forOf
  , sequenceAOf
  , mapAccumLOf
  , mapAccumROf
  , scanr1Of
  , scanl1Of
    -- ** Ixed
  , Ixed
  , Index
  , IxValue
    -- ** At
  , At
  , at
    -- * Miscellaneous functionality
    -- ** Each
  , Each
  , each
    -- ** Cons
  , Cons
  , _Cons
  , cons
  , uncons
  , _head
  , _tail
    -- ** Snoc
  , Snoc
  , _Snoc
  , snoc
  , unsnoc
  , _init
  , _last
    -- ** AsEmpty
  , AsEmpty
  , _Empty
  , pattern Empty
  ) where

import Control.Lens
import Control.Lens.Extras
