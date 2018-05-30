{-# language NoImplicitPrelude   #-}
{-# language ScopedTypeVariables #-}

import Mitchell

import Benchmark
import Concurrency
import Eval
import MVar
import QSem
import STM.TSem

main :: IO ()
main =
  defaultMain
    [ bgroup "Semaphores"
        [ bgroup "QSem"
            [ benchmarkQSem 1
            , benchmarkQSem 2
            , benchmarkQSem 4
            , benchmarkQSem 8
            ]
        , bgroup "TSem"
            [ benchmarkTSem 1
            , benchmarkTSem 2
            , benchmarkTSem 4
            , benchmarkTSem 8
            ]
        ]
    ]

benchmarkQSem :: Int -> Benchmark
benchmarkQSem n =
  benchmarkSem n (newQSem 1) waitQSem signalQSem

benchmarkTSem :: Int -> Benchmark
benchmarkTSem n =
  benchmarkSem n (atomically (newTSem 1)) (atomically . waitTSem)
    (atomically . signalTSem)

benchmarkSem :: Int -> IO a -> (a -> IO ()) -> (a -> IO ()) -> Benchmark
benchmarkSem n mk acquire release =
  envWithCleanup
    (setup (n-1) mk action)
    teardown
    (\ ~(Setup sem _) ->
      bench (show n ++ " thread(s)") (whnfIO (action sem)))
 where
  action sem = do
    acquire sem
    release sem

data Setup a
  = Setup a (IO ())

instance NFData (Setup a) where
  rnf _ = ()

setup :: Int -> IO a -> (a -> IO ()) -> IO (Setup a)
setup n mk action = do
  sem <- mk
  ready :: MVar () <-
    newEmptyMVar
  ids :: [ThreadId] <-
    replicateM n . forkIO $ do
      putMVar ready ()
      forever (action sem)
  replicateM_ n (takeMVar ready)
  pure (Setup sem (traverse_ killThread ids))

teardown :: Setup a -> IO ()
teardown (Setup _ action) =
  action
