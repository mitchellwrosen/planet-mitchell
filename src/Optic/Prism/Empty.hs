{-# language PatternSynonyms #-}

module Optic.Prism.Empty
  ( -- * Empty
    AsEmpty(..)
  , pattern Empty
  ) where

import Control.Lens.Empty (AsEmpty(_Empty), pattern Empty)
