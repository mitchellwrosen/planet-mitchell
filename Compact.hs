{-| This module contains:

    * The "Data.Compact" module from @compact@.
    * The 'CompactionFailed' exception from @base@, originally exported from
      "Control.Exception".
-}

module Compact
  ( -- * Compact
    Compact
  , compact
  , compactWithSharing
  , compactAdd
  , compactAddWithSharing
  , compactSized
  , getCompact
  , inCompact
  , isCompact
  , compactSize
  , CompactionFailed(..)
  ) where

import Control.Exception (CompactionFailed(..))
import Data.Compact
