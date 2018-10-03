module Bifunctor
  ( -- * Bifunctor
    Bifunctor(..)
  , Swapped(..)
    -- * Biapply
  , Biapply(..)
  ) where

import Control.Lens.Iso (Swapped(swapped))
import Data.Bifunctor
import Data.Bifunctor.Apply (Biapply((<<.>>), (.>>), (<<.)))
