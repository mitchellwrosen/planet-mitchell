{-# language CPP #-}

#ifdef USE_WRITER_CPS_MTL

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
  ) where

import Control.Monad.Writer.CPS

#else

module Writer where

#endif
