{-# language CPP #-}

#ifdef USE_STM_CONTAINERS

module TBimap
  ( module STMContainers.Bimap
  ) where

import STMContainers.Bimap

#else

module TBimap where

#endif
