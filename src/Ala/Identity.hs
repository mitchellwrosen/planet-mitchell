{-# language CPP #-}

module Ala.Identity
  ( Identity(..),
#ifdef DEP_TRANSFORMERS
    IdentityT(..),
    mapIdentityT,
#endif
#ifdef DEP_MMORPH
    generalize,
#endif
  ) where

import Data.Functor.Identity (Identity(Identity, runIdentity))
#ifdef DEP_MMORPH
import Control.Monad.Morph (generalize)
#endif
#ifdef DEP_TRANSFORMERS
import Control.Monad.Trans.Identity
  (IdentityT(IdentityT, runIdentityT), mapIdentityT)
#endif
