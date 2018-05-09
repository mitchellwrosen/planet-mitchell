{-# language CPP #-}

#ifdef USE_GAUGE

module Benchmark
  ( -- * Running benchmarks
    defaultMain
    -- * Constructing benchmarks
    -- ** Benchmark
  , Benchmark
  , bench
  , bgroup
  , env
  , envWithCleanup
    -- ** Benchmarkable
  , Benchmarkable
  , nfIO
  , whnfIO
  , nf
  , whnf
  , perBatchEnv
  , perBatchEnvWithCleanup
  , perRunEnv
  , perRunEnvWithCleanup
  ) where

import Gauge

#else

module Benchmark where

#endif
