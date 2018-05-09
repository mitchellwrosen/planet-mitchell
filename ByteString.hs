{-| This module contains:

    * The 'ByteString' type and related functions from @bytestring@.
-}

{-# language CPP #-}

#ifdef USE_BYTESTRING

module ByteString
  ( -- * ByteString
    ByteString
  , empty
  , singleton
  , pack
  , unpack
  , cons
  , snoc
  , append
  , uncons
  , unsnoc
  , null
  , length
  , map
  , reverse
  , intersperse
  , intercalate
  , transpose
  , foldl'
  , foldr
  , concat
  , concatMap
  , any
  , all
  , scanl
  , scanl1
  , scanr
  , scanr1
  , mapAccumL
  , mapAccumR
  , replicate
  , unfoldr
  , unfoldrN
  , take
  , drop
  , splitAt
  , takeWhile
  , dropWhile
  , span
  , spanEnd
  , break
  , breakEnd
  , group
  , groupBy
  , inits
  , tails
  , stripPrefix
  , stripSuffix
  , split
  , splitWith
  , isPrefixOf
  , isSuffixOf
  , isInfixOf
  , breakSubstring
  , elem
  , notElem
  , find
  , filter
  , partition
  , index
  , elemIndex
  , elemIndices
  , elemIndexEnd
  , findIndex
  , findIndices
  , count
  , zip
  , zipWith
  , unzip
  , sort
  , copy
  , packCString
  , packCStringLen
  , useAsCString
  , useAsCStringLen
  ) where

import Data.ByteString

#else

module ByteString where

#endif
