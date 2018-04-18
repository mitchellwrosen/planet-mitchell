{-| This module contains:

    * The 'ByteString' type and related functions from @bytestring@.

    The following functions are not re-exported:

    * 'breakByte' (deprecated)
    * 'findSubstring' (deprecated)
    * 'findSubstrings' (deprecated)
    * 'foldl' (use 'foldl'' instead)
    * 'foldl1' (partial)
    * 'foldl1'' (partial)
    * 'foldr1' (partial)
    * 'foldr1'' (partial)
    * 'head' (partial)
    * 'hPutStrLn' (deprecated)
    * 'init' (partial)
    * 'last' (partial)
    * 'maximum' (partial)
    * 'minimum' (partial)
    * 'putStrLn' (deprecated)
    * 'tail' (partial)

-}
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
  , getLine
  , getContents
  , putStr
  , interact
  , readFile
  , writeFile
  , appendFile
  , hGetLine
  , hGetContents
  , hGet
  , hGetSome
  , hGetNonBlocking
  , hPutStr
  ) where

import Data.ByteString
