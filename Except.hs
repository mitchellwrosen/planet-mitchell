{-# language CPP #-}

#ifdef USE_MTL

module Except
  ( -- * ExceptT
    ExceptT(..)
  , runExceptT
  , mapExceptT
  , withExceptT
    -- * MonadError
  , MonadError(..)
  ) where

import Control.Monad.Except

#else

module Except where

#endif
