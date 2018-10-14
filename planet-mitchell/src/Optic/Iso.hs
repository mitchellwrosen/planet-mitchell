module Optic.Iso
  ( -- * Iso
    Iso
  , Iso'
  , iso
  , from
  , under
  , enum
  , curried
  , uncurried
  , flipped
    -- * Reversing
  , Reversing(..)
  , reversed
    -- * Strict
  , Strict(..)
  , lazy
  ) where

import Control.Lens.Iso (Iso, Iso', Reversing(reversing), Strict(strict),
                         curried, enum, flipped, from, iso, lazy, reversed,
                         uncurried, under)
