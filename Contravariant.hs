{-| This module contains:

    * The 'Contravariant' type class from @contravariant@.
    * Functions on 'Contravariant' from @contravariant@.
-}

{-# language CPP #-}

#ifdef CONTRAVARIANT

module Contravariant
  ( -- * Contravariant
    Contravariant(..)
  , phantom
  , (>$<)
  , (>$$<)
  , ($<)
  ) where

import Data.Functor.Contravariant

#else

module Contravariant where

#endif
