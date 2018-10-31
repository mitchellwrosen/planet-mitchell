module Eff.Mtl.Reader
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
    -- * Optics
  , view
  , views
  , Magnify
  , magnify
  ) where

import Control.Lens.Getter        (view, views)
import Control.Lens.Zoom          (Magnify(magnify))
import Control.Monad.Reader.Class
import Control.Monad.Trans.Reader
