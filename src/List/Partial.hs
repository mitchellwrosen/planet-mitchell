{-# language CPP #-}

module List.Partial
  ( (!!),
#ifdef DEP_EXTRA
    chunksOf,
#endif
    head,
    init,
    last,
#ifdef DEP_EXTRA
    splitOn,
#endif
    tail,
  ) where

import Data.List
#ifdef DEP_EXTRA
import Data.List.Extra
#endif
