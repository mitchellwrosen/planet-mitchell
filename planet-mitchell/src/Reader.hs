module Reader
  ( -- * Reader
    Reader
  , runReader
  , mapReader
  , withReader
    -- * ReaderT
  , ReaderT(..)
  , mapReaderT
  , withReaderT
    -- * MonadReader
  , MonadReader(..)
    -- * Magnify
  , Magnify
  , magnify
  ) where

import Control.Lens.Zoom          (Magnify(magnify))
import Control.Monad.Reader.Class
import Control.Monad.Trans.Reader
