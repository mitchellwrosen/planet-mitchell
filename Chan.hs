{-# language CPP #-}

#ifdef USE_UNAGI_CHAN

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

#else

module Chan where

#endif
