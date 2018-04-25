module State
  ( -- * State
    State
  , runState
  , evalState
  , execState
  , mapState
  , withState
    -- * StateT
  , StateT(..)
  , evalStateT
  , execStateT
  , mapStateT
  , withStateT
    -- * MonadState
  , MonadState(..)
  , modify
  , modify'
  , gets
    -- * Optics
  , use
  , uses
  , reuse
  , reuses
  , assign
  , modifying
  ) where

import Control.Lens.Getter
import Control.Lens.Review
import Control.Lens.Setter
import Control.Monad.State.Strict
