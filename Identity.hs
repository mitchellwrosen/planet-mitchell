{-# language CPP #-}

module Identity
  ( Identity(..),
#ifdef USE_TRANSFORMERS
    IdentityT(..),
    mapIdentityT,
#endif
#ifdef USE_MMORPH
    generalize,
#endif
  ) where

import Data.Functor.Identity
#ifdef USE_MMORPH
import Control.Monad.Morph
#endif
#ifdef USE_TRANSFORMERS
import Control.Monad.Trans.Identity
#endif
