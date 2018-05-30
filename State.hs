{-# language CPP #-}

module State
  (
#ifdef DEP_TRANSFORMERS
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
#ifdef DEP_MTL
    -- * MonadState
    MonadState(..),
    gets,
    modify,
    modify',
#elif defined(DEP_TRANSFORMERS)
    get,
    gets,
    put,
    state,
    modify,
    modify',
#endif
  ) where

#ifdef DEP_MTL
import Control.Monad.State.Class (MonadState(..), modify, modify', gets)
#elif defined(DEP_TRANSFORMERS)
import Control.Monad.Trans.State.Strict (get, gets, modify, modify', put, state)
#endif
#ifdef DEP_TRANSFORMERS
import Control.Monad.Trans.State.Strict
  (State, StateT(..), evalState, evalStateT, execState, execStateT, mapState,
    mapStateT, runState, withState, withStateT)
#endif
