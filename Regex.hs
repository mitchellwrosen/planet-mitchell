{-| This module contains:

    * The regular expression type and related functionality from the
      @regex-applicative@ package, originally exported from the
      "Text.Regex.Applicative" and "Text.Regex.Applicative.Common" modules.

    The following functions are not re-exported:

    * 'comap' (use 'Profunctor.lmap' instead)

-}

module Regex
  ( -- * Regex
    RE
  , Greediness(..)
    -- * Building regular expressions
    -- ** Generic combinators
  , sym
  , psym
  , msym
  , anySym
  , few
  , reFoldl
  , withMatched
    -- ** Strings
  , string
    -- ** Digits
  , digit
  , hexDigit
    -- ** Numbers
  , signed
  , decimal
  , hexadecimal
    -- * Running regular expressions
  , match
  , (=~)
  , replace
  , findFirstPrefix
  , findLongestPrefix
  , findShortestPrefix
  , findFirstInfix
  , findLongestInfix
  , findShortestInfix
  ) where

import Text.Regex.Applicative
import Text.Regex.Applicative.Common
