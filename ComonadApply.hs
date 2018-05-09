{-# language CPP #-}

#ifdef USE_COMONAD

module ComonadApply
  ( ComonadApply(..)
  , (<@@>)
  , liftW2
  , liftW3
  ) where

import Control.Comonad

#else

module ComonadApply where

#endif
