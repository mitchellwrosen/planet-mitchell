{-# language CPP #-}

module System
  (
#if MIN_VERSION_base(4,11,0)
    ByteOrder(..),
    targetByteOrder,
#endif
    os,
#ifdef EXTRA
    isWindows,
    isMac,
#endif
    arch,
    compilerName,
    compilerVersion,
  ) where

#if MIN_VERSION_base(4,11,0)
import GHC.ByteOrder
#endif
import System.Info
#ifdef EXTRA
import System.Info.Extra
#endif
