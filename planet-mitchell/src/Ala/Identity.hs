module Ala.Identity
  ( -- * Identity
    Identity(..)
  , generalize
    -- * IdentityT
  , IdentityT(..)
  , mapIdentityT
  ) where

import Control.Monad.Morph          (generalize)
import Control.Monad.Trans.Identity (IdentityT(IdentityT, runIdentityT),
                                     mapIdentityT)
import Data.Functor.Identity        (Identity(Identity, runIdentity))
