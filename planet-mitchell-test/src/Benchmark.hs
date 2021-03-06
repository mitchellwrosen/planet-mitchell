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
