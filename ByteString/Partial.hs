{-| This module contains:

    * The partial functions exported by "Data.ByteString" from @bytestring@.
-}

{-# language CPP #-}

#ifdef BYTESTRING

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
