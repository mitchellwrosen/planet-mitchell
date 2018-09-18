{-# language CPP #-}

module Data
  ( module Data.Data,
#ifdef DEP_LENS
    gtraverse,
    Plated,
    plate,
    template,
    tinplate,
    uniplate,
    biplate,
    children,
    rewrite,
    rewriteOf,
    rewriteOn,
    rewriteOnOf,
    rewriteM,
    rewriteMOf,
    rewriteMOn,
    rewriteMOnOf,
    universe,
    universeOf,
    universeOn,
    universeOnOf,
    cosmos,
    cosmosOf,
    cosmosOn,
    cosmosOnOf,
    transform,
    transformOf,
    transformOnOf,
    transformM,
    transformMOf,
    transformMOn,
    transformMOnOf,
    contexts,
    contextsOf,
    contextsOn,
    contextsOnOf,
    holes,
    holesOn,
    holesOnOf,
    para,
    paraOf,
    deep,
    composOpFold,
    parts,
#endif
  ) where

import Data.Data
#ifdef DEP_LENS
import Control.Lens.Plated
import Data.Data.Lens
#endif
