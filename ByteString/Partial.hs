{-# language CPP #-}

#ifdef USE_BYTESTRING

module ByteString.Partial
  ( foldl1'
  , foldr1
  , foldr1'
  , head
  , init
  , last
  , maximum
  , minimum
  , tail
  ) where

import Data.ByteString

#else

module ByteString.Partial where

#endif
