{-# language CPP #-}

#ifdef USE_PRETTYPRINTER

module Pretty
  ( module Data.Text.Prettyprint.Doc
  ) where

import Data.Text.Prettyprint.Doc

#else

module Pretty where

#endif
