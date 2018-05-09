{-# language CPP #-}

#ifdef USE_STM_CONTAINERS

module TMultimap
  ( module STMContainers.Multimap
  ) where

import STMContainers.Multimap

#else

module TMultimap where

#endif
