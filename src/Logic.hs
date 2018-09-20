module Logic
  ( -- ** Logic
    Logic
  , logic
  , runLogic
  , observeAll
    -- ** LogicT
  , LogicT(..)
  , runLogicT
  , observeT
  , observeManyT
  , observeAllT
    -- ** MonadLogic
  , MonadLogic
  , msplit
  , interleave
  , (>>-)
  , ifte
  , once
  , reflect
  , lnot
  ) where

import Control.Monad.Logic
