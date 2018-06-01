module IO.Unsafe
  ( unsafePerformIO,
    unsafeDupablePerformIO,
    unsafeInterleaveIO,
    unsafeFixIO,
  ) where

import System.IO.Unsafe
  (unsafeFixIO, unsafeInterleaveIO, unsafeDupablePerformIO, unsafePerformIO)
