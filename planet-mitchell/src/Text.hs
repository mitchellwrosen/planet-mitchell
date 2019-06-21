{-# LANGUAGE MagicHash #-}

module Text
  ( -- * Text
    Text
  , all
  , any
  , append
  , break
  , breakOn
  , breakOnAll
  , breakOnEnd
  , center
  , chunksOf
  , commonPrefixes
  , compareLength
  , concat
  , concatMap
  , cons
  , copy
  , decodeUtf8'
  , double
  , drop
  , dropAround
  , dropEnd
  , dropWhile
  , dropWhileEnd
  , empty
  , encodeUtf16BE
  , encodeUtf16LE
  , encodeUtf32BE
  , encodeUtf32LE
  , encodeUtf8
  , filter
  , find
  , findIndex
  , foldl'
  , foldr
  , group
  , groupBy
  , inits
  , intercalate
  , intersperse
  , isInfixOf
  , isPrefixOf
  , isSuffixOf
  , justifyLeft
  , justifyRight
  , length
  , lines
  , map
  , mapAccumL
  , mapAccumR
  , null
  , pack
  , partition
  , rational
  , replace
  , replicate
  , reverse
  , scanl
  , scanl1
  , scanr
  , scanr1
  , singleton
  , snoc
  , span
  , split
  , splitAt
  , strip
  , stripEnd
  , stripPrefix
  , stripStart
  , stripSuffix
  , tails
  , take
  , takeEnd
  , takeWhile
  , takeWhileEnd
  , toCaseFold
  , toLower
  , toTitle
  , toUpper
  , transpose
  , uncons
  , unfoldr
  , unfoldrN
  , unlines
  , unpack
  , unpackCString#
  , unsnoc
  , unwords
  , words
  , zip
  , zipWith
    -- ** Number conversion
  , Reader
  , IReader
  , decimal
  , hexadecimal
  , signed
    -- ** Optics
  , packed
  , unpacked
  , text
  , builder
  ) where

import Data.Text
import Data.Text.Encoding      (decodeUtf8', encodeUtf16BE, encodeUtf16LE,
                                encodeUtf32BE, encodeUtf32LE, encodeUtf8)
import Data.Text.Internal.Read (IReader)
import Data.Text.Read          (Reader, decimal, double, hexadecimal, rational,
                                signed)
import Data.Text.Strict.Lens   (builder, packed, text, unpacked)
