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
    gets,
    modify,
    modify',
#elif defined(USE_TRANSFORMERS)
    get,
    gets,
    put,
    state,
    modify,
    modify',
#endif
  ) where

#ifdef USE_MTL
import Control.Monad.State.Class (MonadState(..), modify, modify', gets)
#elif defined(USE_TRANSFORMERS)
import Control.Monad.Trans.State.Strict (get, gets, modify, modify', put, state)
#endif
#ifdef USE_TRANSFORMERS
import Control.Monad.Trans.State.Strict
  (State, StateT(..), evalState, evalStateT, execState, execStateT, mapState,
    mapStateT, runState, withState, withStateT)
#endif
