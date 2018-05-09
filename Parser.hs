{-# language CPP #-}

#ifdef USE_MEGAPARSEC

module Parser
  ( module Text.Megaparsec
  ) where

import Text.Megaparsec

#else

module Parser where

#endif
