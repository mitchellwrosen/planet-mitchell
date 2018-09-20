module Ala.Identity
  ( Identity(..),
    IdentityT(..),
    mapIdentityT,
    generalize,
  ) where

import Data.Functor.Identity (Identity(Identity, runIdentity))
import Control.Monad.Morph (generalize)
import Control.Monad.Trans.Identity
  (IdentityT(IdentityT, runIdentityT), mapIdentityT)
