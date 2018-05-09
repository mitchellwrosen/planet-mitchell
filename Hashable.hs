{-# language CPP #-}

#ifdef USE_HASHABLE

module Hashable
 ( -- * Hashable
   Hashable(..)
 , hashUsing
 , hashPtr
 , hashPtrWithSalt
 , hashByteArray
 , hashByteArrayWithSalt
 , Hashed
 , hashed
 , unhashed
 , mapHashed
 , traverseHashed
 ) where

import Data.Hashable

#else

module Hashable where

#endif
