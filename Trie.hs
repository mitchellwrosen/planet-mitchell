{-# language CPP #-}

#ifdef USE_BYTESTRING_TRIE

module Trie
  ( module Data.Trie
  , module Data.Trie.Convenience
  ) where

import Data.Trie
import Data.Trie.Convenience

#else

module Trie where

#endif
