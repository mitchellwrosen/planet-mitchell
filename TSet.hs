{-# language CPP #-}

#ifdef USE_STM_CONTAINERS

module TSet
  ( module STMContainers.Set
  ) where

import STMContainers.Set

#else

module TSet where

#endif
