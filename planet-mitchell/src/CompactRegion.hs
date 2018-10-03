module CompactRegion
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
