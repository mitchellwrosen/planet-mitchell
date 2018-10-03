module List.Partial
  ( (!!)
  , chunksOf
  , elemIndexJust
  , findIndexJust
  , findJust
  , head
  , init
  , last
  , lookupJust
  , tail
  ) where

import Data.List       (head, init, last, tail, (!!))
import Data.List.Extra (chunksOf)
import Safe            (elemIndexJust, findIndexJust, findJust, lookupJust)
