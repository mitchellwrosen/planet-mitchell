{-# language CPP #-}

#ifdef USE_LOGICT

module Logic
  ( module Control.Monad.Logic
  ) where

import Control.Monad.Logic

#else

module Logic where

#endif
