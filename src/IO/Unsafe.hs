module IO.Unsafe
  ( unsafePerformIO
  , unsafeDupablePerformIO
  , unsafeInterleaveIO
  , unsafeFixIO
  ) where

import System.IO.Unsafe (unsafeDupablePerformIO, unsafeFixIO,
                         unsafeInterleaveIO, unsafePerformIO)
