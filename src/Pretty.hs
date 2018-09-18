{-# language CPP #-}

module Pretty
  ( module Data.Text.Prettyprint.Doc,
#ifdef DEP_PRETTYPRINTER_ANSI_TERMINAL
    module Data.Text.Prettyprint.Doc.Render.Terminal
#endif
  ) where

import Data.Text.Prettyprint.Doc
#ifdef DEP_PRETTYPRINTER_ANSI_TERMINAL
import Data.Text.Prettyprint.Doc.Render.Terminal
#endif
