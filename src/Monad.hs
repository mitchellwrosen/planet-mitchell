{-# language CPP #-}

module Monad
  (
    Monad((>>=), return),
    (=<<),
    (>=>),
    (<=<),
    (<$!>),
#ifdef DEP_EXTRA
    eitherM,
    ifM,
#endif
#ifdef DEP_EXTRA
    join,
    loopM,
    maybeM,
    notM,
    unlessM,
    whenJustM,
    whenM,
    whileM,
#endif
    Kleisli(..),
  ) where

import Control.Arrow
import Control.Monad
#ifdef DEP_EXTRA
import Control.Monad.Extra
#endif
