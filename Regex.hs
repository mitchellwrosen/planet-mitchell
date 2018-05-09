{-# language CPP #-}

#ifdef USE_REGEX_APPLICATIVE

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

#else

module Regex where

#endif
