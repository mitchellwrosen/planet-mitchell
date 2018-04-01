module STM
  ( STM
  , atomically
  , retry
  , orElse
  , throwSTM
  , catchSTM
  , unsafeIOToSTM
  ) where

import GHC.Conc
