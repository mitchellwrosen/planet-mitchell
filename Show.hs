{-# language CPP #-}

module Show
  ( Show(..),
    ShowS,
    shows,
    showParen,
    showListWith,
    showsUnaryWith,
    showsBinaryWith,
    Show1(..),
    showsPrec1,
#ifdef DEP_TRANSFORMERS_COMPAT
    liftShowsPrecDefault,
#endif
    Show2(..),
    showsPrec2
  ) where

import Data.Functor.Classes
#ifdef DEP_TRANSFORMERS_COMPAT
import Data.Functor.Classes.Generic
#endif
import Text.Show
