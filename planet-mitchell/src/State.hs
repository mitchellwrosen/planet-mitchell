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
    -- * Optics
  , use
  , uses
  , (.=)
  , (%=)
  , Zoom
  , zoom
  , Zoomed
  ) where

import Control.Lens.Getter              (use, uses)
import Control.Lens.Setter              ((%=), (.=))
import Control.Lens.Zoom                (Zoom(zoom), Zoomed)
import Control.Monad.State.Class        (MonadState(..), gets, modify, modify')
import Control.Monad.Trans.State.Strict (State, StateT(..), evalState,
                                         evalStateT, execState, execStateT,
                                         mapState, mapStateT, runState,
                                         withState, withStateT)
