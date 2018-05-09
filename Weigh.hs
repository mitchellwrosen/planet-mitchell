{-# language CPP            #-}
{-# language PackageImports #-}

#ifdef USE_WEIGH

module Weigh
  ( module X
  ) where

import "weigh" Weigh as X

#else

module Weigh where

#endif
