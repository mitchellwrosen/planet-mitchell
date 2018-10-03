module Show
  ( Show(..)
  , ShowS
  , shows
  , showParen
  , showListWith
  , showsUnaryWith
  , showsBinaryWith
  , Show1(..)
  , showsPrec1
  , liftShowsPrecDefault
  , Show2(..)
  , showsPrec2
  ) where

import Data.Functor.Classes
import Data.Functor.Classes.Generic
import Text.Show
