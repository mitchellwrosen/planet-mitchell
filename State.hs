{-# language CPP #-}

module State
  (
#ifdef USE_TRANSFORMERS
    -- * State
    State,
    runState,
    evalState,
    execState,
    mapState,
    withState,
    -- * StateT
    StateT(..),
    evalStateT,
    execStateT,
    mapStateT,
    withStateT,
#endif
#ifdef USE_MTL
    -- * MonadState
    MonadState(..),
    modify,
    modify',
    gets,
#elif defined(USE_TRANSFORMERS)
    get,
    put,
    state,
    modify,
    modify',
    gets,
#endif
  ) where

#ifdef USE_MTL
import Control.Monad.State.Class (MonadState(..), modify, modify', gets)
#endif
#ifdef USE_TRANSFORMERS
import Control.Monad.Trans.State.Strict
  (State, StateT(..), evalState, evalStateT, execState, execStateT, get, gets,
    mapState, mapStateT, modify, modify', put, runState, state, withState,
    withStateT)
#endif
