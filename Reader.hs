{-# language CPP #-}

module Reader
  (
#ifdef USE_TRANSFORMERS
    -- * Reader
    Reader,
    runReader,
    mapReader,
    withReader,
    -- * ReaderT
    ReaderT(..),
    mapReaderT,
    withReaderT,
#endif
#ifdef USE_MTL
    -- * MonadReader
    MonadReader(..),
#endif
  ) where

#ifdef USE_MTL
import Control.Monad.Reader.Class
#endif
#ifdef USE_TRANSFORMERS
import Control.Monad.Trans.Reader
#endif
