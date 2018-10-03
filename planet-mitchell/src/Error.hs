module Error
  ( -- * Error
    error
  , errorWithoutStackTrace
  , undefined
  , throw
  , assert
  ) where

import Control.Exception
import GHC.Err
