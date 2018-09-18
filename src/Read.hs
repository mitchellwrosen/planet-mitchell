module Read
  ( Read(..),
    ReadS,
    reads,
    readMaybe,
    readEither,
    readParen,
    readsData,
    readData,
    readsUnaryWith,
    readUnaryWith,
    readsBinaryWith,
    readBinaryWith,
    Read1(..),
    readsPrec1,
    readPrec1,
    liftReadListDefault,
    liftReadListPrecDefault,
    Read2(..),
    readsPrec2,
    readPrec2,
    liftReadList2Default,
    liftReadListPrec2Default,
  ) where

import Data.Functor.Classes
import GHC.Read
import Text.Read