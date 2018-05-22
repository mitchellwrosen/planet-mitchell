{-# language CPP #-}

module Exit
  ( ExitCode(..),
    exitWith,
    exitFailure,
    exitSuccess,
    die,
#ifdef USE_UNIX
    exitImmediately
#endif
  ) where

import System.Exit (ExitCode(..), die, exitFailure, exitSuccess, exitWith)
#ifdef USE_UNIX
import System.Posix.Process (exitImmediately)
#endif
