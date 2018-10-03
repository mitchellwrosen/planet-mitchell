module Concurrency.Chan
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
