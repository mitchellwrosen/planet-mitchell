module Lock
  ( Lock
  , newLock
  , withLock
  , withLockTry
  ) where

import Control.Concurrent.Extra
