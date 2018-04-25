module Writer
  ( -- * Writer
    Writer
  , runWriter
  , execWriter
  , mapWriter
    -- * WriterT
  , WriterT
  , writerT
  , runWriterT
  , execWriterT
  , mapWriterT
    -- * MonadWriter
  , MonadWriter(..)
  , listens
  , censor
    -- * Optics
  , listening
  , listenings
  , scribe
  , passing
  , censoring
  ) where

import Control.Lens.Getter
import Control.Lens.Setter
import Control.Monad.Writer.CPS
