{-# language CPP #-}

module Monad
  (
    Monad((>>=), return),
    (=<<),
    (>=>),
    (<=<),
    join,
    (<$!>),
#ifdef DEP_EXTRA
    maybeM,
    eitherM,
    whileM,
    whenM,
    whenJustM,
    unlessM,
    ifM,
    notM,
#endif
    Kleisli(..),
  ) where

import Control.Arrow
import Control.Monad
#ifdef DEP_EXTRA
import Control.Monad.Extra
#endif
