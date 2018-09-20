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
  , gets
  , modify
  , modify'
    -- * Zoom
  , Zoom
  , zoom
  , Zoomed
  ) where

import Control.Lens.Zoom                (Zoom(zoom), Zoomed)
import Control.Monad.State.Class        (MonadState(..), gets, modify, modify')
import Control.Monad.Trans.State.Strict (State, StateT(..), evalState,
                                         evalStateT, execState, execStateT,
                                         mapState, mapStateT, runState,
                                         withState, withStateT)
