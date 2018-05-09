{-# language CPP #-}

#ifdef USE_OPTPARSE_APPLICATIVE

module Optparse
  ( module Options.Applicative
  ) where

import Options.Applicative

#else

module Optparse where

#endif
