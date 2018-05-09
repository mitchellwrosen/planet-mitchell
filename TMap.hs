{-# language CPP #-}

#ifdef USE_STM_CONTAINERS

module TMap
  ( module STMContainers.Map
  ) where

import STMContainers.Map

#else

module TMap where

#endif
