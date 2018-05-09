{-| This module contains:

    * The "Data.Compact" module from @compact@.
    * The 'CompactionFailed' exception from @base@, originally exported from
      "Control.Exception".
-}

{-# language CPP #-}

module Compact
  (
#ifdef USE_COMPACT
    -- * Compact
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
  ,
#endif
    CompactionFailed(..)
  ) where

import Control.Exception (CompactionFailed(..))
#ifdef USE_COMPACT
import Data.Compact
#endif
