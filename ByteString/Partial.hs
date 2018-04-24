{-| This module contains:

    * Partial functions on 'ByteString'.

    The following functions are not re-exported:

    * 'foldl' (use 'foldl'' instead)

-}

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
