module Enum
  ( Enum(..)
  , toEnumMay
  , succMay
  , predMay
  ) where

import GHC.Enum
import Safe     (predMay, succMay, toEnumMay)
