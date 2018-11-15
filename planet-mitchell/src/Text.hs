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
    -- ** Similarity metrics
  , levenshtein
  , levenshteinNorm
  , damerauLevenshtein
  , damerauLevenshteinNorm
  , overlap
  , jaccard
  , hamming
  , jaro
  , jaroWinkler
    -- ** Number conversion
  , Reader
  , IReader
  , decimal
  , hexadecimal
  , signed
    -- ** Styling for ANSI terminals
    -- *** Foreground color
  , black
  , red
  , green
  , yellow
  , blue
  , magenta
  , cyan
  , white
  , brightBlack
  , brightRed
  , brightGreen
  , brightYellow
  , brightBlue
  , brightMagenta
  , brightCyan
  , brightWhite
  , rgb
    -- *** Background color
  , blackBg
  , redBg
  , greenBg
  , yellowBg
  , blueBg
  , magentaBg
  , cyanBg
  , whiteBg
  , brightBlackBg
  , brightRedBg
  , brightGreenBg
  , brightYellowBg
  , brightBlueBg
  , brightMagentaBg
  , brightCyanBg
  , brightWhiteBg
  , rgbBg
    -- *** Style
  , bold
  , faint
  , italic
  , underline
  , doubleUnderline
  , strikethrough
  , frame
  , encircle
  , overline
    -- ** Optics
  , packed
  , unpacked
  , text
  , builder
  ) where

import Data.Text
import Data.Text.ANSI          (black, blackBg, blue, blueBg, bold, brightBlack,
                                brightBlackBg, brightBlue, brightBlueBg,
                                brightCyan, brightCyanBg, brightGreen,
                                brightGreenBg, brightMagenta, brightMagentaBg,
                                brightRed, brightRedBg, brightWhite,
                                brightWhiteBg, brightYellow, brightYellowBg,
                                cyan, cyanBg, doubleUnderline, encircle, faint,
                                frame, green, greenBg, italic, magenta,
                                magentaBg, overline, red, redBg, rgb, rgbBg,
                                strikethrough, underline, white, whiteBg,
                                yellow, yellowBg)
import Data.Text.Encoding      (decodeUtf8', encodeUtf16BE, encodeUtf16LE,
                                encodeUtf32BE, encodeUtf32LE, encodeUtf8)
import Data.Text.Internal.Read (IReader)
import Data.Text.Metrics       (damerauLevenshtein, damerauLevenshteinNorm,
                                hamming, jaccard, jaro, jaroWinkler,
                                levenshtein, levenshteinNorm, overlap)
import Data.Text.Read          (Reader, decimal, double, hexadecimal, rational,
                                signed)
import Data.Text.Strict.Lens   (builder, packed, text, unpacked)
