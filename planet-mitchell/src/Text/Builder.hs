{-# LANGUAGE PackageImports #-}

module Text.Builder
  ( -- * Builder
    Builder
  , run
  , length
  , null
    -- ** Construction
  , text
  , string
  , char
  , decimal
  , unsignedDecimal
  , thousandSeparatedDecimal
  , thousandSeparatedUnsignedDecimal
  , hexadecimal
  , unsignedHexadecimal
  , fixedDouble
  ) where

import "text-builder" Text.Builder
