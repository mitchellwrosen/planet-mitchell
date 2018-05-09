{-# language CPP #-}

#ifdef USE_TYPED_PROCESS

module Process
  ( module System.Process.Typed
  ) where

import System.Process.Typed

#else

module Process where

#endif
