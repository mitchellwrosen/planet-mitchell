{-# language CPP #-}

module ByteString
  ( -- * ByteString
    ByteString,
    all,
    any,
#ifdef DEP_BYTESTRING_LEXING
    asHexadecimal,
#endif
    append,
    break,
    breakEnd,
    breakSubstring,
    concat,
    concatMap,
    cons,
    copy,
    count,
    drop,
    dropWhile,
    elem,
    elemIndex,
    elemIndexEnd,
    elemIndices,
    empty,
    filter,
    find,
    findIndex,
    findIndices,
    foldl',
    foldr,
    group,
    groupBy,
#ifdef DEP_CRYPTOHASH_SHA1
    hash,
    hmac,
#endif
    index,
    inits,
    intercalate,
    intersperse,
    isInfixOf,
    isPrefixOf,
    isSuffixOf,
    length,
    map,
    mapAccumL,
    mapAccumR,
    notElem,
    null,
    pack,
    packCString,
    packCStringLen,
    partition,
    replicate,
    reverse,
    scanl,
    scanl1,
    scanr,
    scanr1,
    singleton,
    snoc,
    sort,
    span,
    spanEnd,
    split,
    splitAt,
    splitWith,
    stripPrefix,
    stripSuffix,
    tails,
    take,
    takeWhile,
    transpose,
    uncons,
    unfoldr,
    unfoldrN,
    unpack,
    unsnoc,
    unzip,
    useAsCString,
    useAsCStringLen,
    zip,
    zipWith,
#ifdef DEP_LENS
    -- ** Optics
    bytes,
    packedBytes,
    unpackedBytes,
#endif
  ) where

#ifdef DEP_CRYPTOHASH_SHA1
import Crypto.Hash.SHA1 (hash, hmac)
#endif
import Data.ByteString
#ifdef DEP_LENS
import Data.ByteString.Lens
#endif
#ifdef DEP_BYTESTRING_LEXING
import Data.ByteString.Lex.Integral (asHexadecimal)
#endif
