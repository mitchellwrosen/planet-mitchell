{-# language PackageImports #-}
module Prelude
  ( module X
  ) where

import "base" Prelude as X hiding
  ((.), fail, foldl, foldl1, foldr1, head, id, init, last, lex, maximum, minimum, read, return, tail)
