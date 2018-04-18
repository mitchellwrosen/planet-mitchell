{-| This module contains:

    * The various channel types and related functionality from
      "Control.Concurrent.Chan.Unagi.Bounded" in @unagi-chan@.

    The following functions are not re-exported:

    * 'getChanContents' (lazy I/O)
    * 'writeList2Chan' (uncommon)
-}

module Chan
  ( -- * Creating channels
    newChan
  , InChan
  , OutChan
    -- * Reading
  , readChan
  , readChanOnException
  , tryReadChan
  , Element(..)
  , estimatedLength
    -- * Writing
  , writeChan
  , tryWriteChan
    -- * Broadcasting
  , dupChan
  ) where

import Control.Concurrent.Chan.Unagi.Bounded
