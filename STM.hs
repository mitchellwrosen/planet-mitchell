{-| This module contains:

    * The 'STM' monad and related functionality from @stm@, generalized by
      @unliftio@.

    The following functions are not re-exported:

    * 'orElse' (use 'Alternative.<|>' instead)

-}

module STM
  ( -- * STM
    STM
  , atomically
  , retry
  , throwSTM
  , catchSTM
  , BlockedIndefinitelyOnSTM(..)
  , unsafeIOToSTM
  ) where

import Control.Exception (BlockedIndefinitelyOnSTM(..))
import UnliftIO.STM
import GHC.Conc (catchSTM, retry, throwSTM, unsafeIOToSTM)
