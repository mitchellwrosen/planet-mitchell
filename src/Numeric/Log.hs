{-# LANGUAGE PackageImports #-}

module Numeric.Log
  ( Log(..)
  , Precise(..)
  , sum
  ) where

import "log-domain" Numeric.Log (Log(Exp, ln),
                                 Precise(expm1, log1mexp, log1p, log1pexp), sum)
