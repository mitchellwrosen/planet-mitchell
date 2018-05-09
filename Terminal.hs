{-# language CPP #-}

#ifdef USE_ANSI_TERMINAL

module Terminal
  ( module System.Console.ANSI
  ) where

import System.Console.ANSI

#else

module Terminal where

#endif
