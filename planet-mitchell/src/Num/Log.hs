module Num.Log
  ( Log(..)
  , Precise(..)
  , sum
  ) where

import Numeric.Log (Log(Exp, ln), Precise(expm1, log1mexp, log1p, log1pexp),
                    sum)
