{-# LANGUAGE CPP #-}

module System
  ( -- * System info
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
    -- * Network info
    getNetworkInterfaces,
    NetworkInterface(..),
    IPv4(..),
    IPv6(..),
    MAC(..),
  ) where

#if MIN_VERSION_base(4,11,0)
import GHC.ByteOrder
#endif
import Network.Info      (IPv4(IPv4), IPv6(IPv6), MAC(MAC), NetworkInterface(NetworkInterface, ipv4, ipv6, mac, name),
                          getNetworkInterfaces)
import System.Info
import System.Info.Extra
