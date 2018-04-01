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
import System.Environment
#endif
