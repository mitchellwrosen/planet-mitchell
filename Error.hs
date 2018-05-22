module Error
  ( -- * Error
    error,
    errorWithoutStackTrace,
    undefined,
    throw,
    assert,
  ) where

import GHC.Err
import Control.Exception
