module Ala.Identity
  ( -- * Identity
    Identity(..)
    -- * IdentityT
  , IdentityT(..)
  , mapIdentityT
  ) where

import Control.Monad.Trans.Identity (IdentityT(IdentityT, runIdentityT),
                                     mapIdentityT)
import Data.Functor.Identity        (Identity(Identity, runIdentity))
