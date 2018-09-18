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

import Data.Functor.Identity
#ifdef DEP_MMORPH
import Control.Monad.Morph
#endif
#ifdef DEP_TRANSFORMERS
import Control.Monad.Trans.Identity
#endif
