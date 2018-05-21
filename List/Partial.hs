{-# language CPP #-}

module List.Partial
  ( (!!),
#ifdef USE_EXTRA
    chunksOf,
#endif
    head,
    init,
    last,
#ifdef USE_EXTRA
    splitOn,
#endif
    tail,
  ) where

import Data.List
#ifdef USE_EXTRA
import Data.List.Extra
#endif
