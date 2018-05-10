{-# language CPP #-}

#ifdef USE_REACTIVE_BANANA

module FRP
  ( module Control.Event.Handler
  , module Reactive.Banana.Combinators
  , module Reactive.Banana.Frameworks
  ) where

import Control.Event.Handler
import Reactive.Banana.Combinators
import Reactive.Banana.Frameworks

#else

module FRP where

#endif
