{-| This module contains:

    The "GHC.Environment" module from @base@.
    The "UnliftIO.Environment" module from @unliftio@.
    On GHC 8.4+, "System.Environment.Blank" module from @base@.

-}

{-# language CPP #-}

module Environment
  ( getArgs
  , getFullArgs
  , withArgs
  , getProgName
  , withProgName
  , getExecutablePath
  , getEnvironment
#if MIN_VERSION_base(4,11,0)
  , getEnv
  , getEnvDefault
#else
  , lookupEnv
#endif
  , setEnv
  , unsetEnv
  ) where

import GHC.Environment
#if MIN_VERSION_base(4,11,0)
import System.Environment.Blank
#else
import UnliftIO.Environment
#endif
