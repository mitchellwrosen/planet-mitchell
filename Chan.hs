{-| This module contains:

    * The various channel types and related functionality from
      "Control.Concurrent.Chan.Unagi.Bounded" in @unagi-chan@.
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
