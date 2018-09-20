{-# language CPP #-}

module Monad
  ( -- * Monad
    Monad((>>=), return),
    (=<<),
    (>=>),
    (<=<),
    (<$!>),
#ifdef DEP_EXTRA
    join,
    loopM,
    unlessM,
    whenJustM,
    whenM,
    whileM,
#endif
    -- ** Newtypes
    Kleisli(..),
#ifdef DEP_MMORPH
    -- * MMonad
    MMonad(..),
    squash,
    (>|>),
    (<|<),
    (=<|),
    (|>=),
#endif
  ) where

import Control.Arrow (Kleisli(Kleisli, runKleisli))
import Control.Monad (Monad((>>=), return), (=<<), (>=>), (<=<), (<$!>), join)
#ifdef DEP_EXTRA
import Control.Monad.Extra (loopM, unlessM, whenJustM, whenM, whileM)
#endif
#ifdef DEP_MMORPH
import Control.Monad.Morph (MMonad(embed), squash, (>|>), (<|<), (=<|), (|>=))
#endif
