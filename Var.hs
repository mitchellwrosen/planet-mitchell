module Var
  ( Var
  , newVar
  , readVar
  , writeVar
  , modifyVar
  , modifyVar_
  , withVar
  ) where

import Control.Concurrent.Extra
