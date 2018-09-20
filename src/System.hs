{-# LANGUAGE CPP #-}

module System
  (
#if MIN_VERSION_base(4,11,0)
    ByteOrder(..),
    targetByteOrder,
#endif
    os,
    isWindows,
    isMac,
    arch,
    compilerName,
    compilerVersion,
  ) where

#if MIN_VERSION_base(4,11,0)
import GHC.ByteOrder
#endif
import System.Info
import System.Info.Extra
