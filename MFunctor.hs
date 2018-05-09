{-# language CPP #-}

#ifdef USE_MMORPH

module MFunctor
  ( MFunctor(..)
  ) where

import Control.Monad.Morph

#else

module MFunctor where

#endif
