{-# language CPP #-}

module Monad
  (
    Monad((>>=), return),
    (=<<),
    (>=>),
    (<=<),
    join,
    (<$!>),
#ifdef EXTRA
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
#ifdef EXTRA
import Control.Monad.Extra
#endif
