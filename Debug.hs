{-# language PackageImports #-}

module Debug
  ( -- * Tracing strings
    trace
  , traceId
  , traceShow
  , traceShowId
  , traceStack
  , traceIO
  , traceEvent
  , traceEventIO
  , traceMarker
  , traceMarkerIO
    -- * Simulated call stack
  , CallStack
  , currentCallStack
  , whoCreated
  , HasCallStack
  , callStack
  , emptyCallStack
  , freezeCallStack
  , fromCallSiteList
  , getCallStack
  , popCallStack
  , prettyCallStack
  , pushCallStack
  , withFrozenCallStack
  , GHC.Stack.SrcLoc(..)
  , prettySrcLoc
    -- * Execution stack (requires @libdw@)
  , Location(..)
  , getStackTrace
  , showStackTrace
  ) where

import "base" Prelude

import Debug.Trace
import GHC.ExecutionStack hiding (Location(..), getStackTrace)
import GHC.Stack

import qualified GHC.ExecutionStack

data Location = Location
  { objectName :: String
  , functionName :: String
  , srcLoc :: Maybe (String, Int, Int)
  }

mkLoc :: GHC.ExecutionStack.Location -> Location
mkLoc loc =
  Location
    { objectName = GHC.ExecutionStack.objectName loc
    , functionName = GHC.ExecutionStack.functionName loc
    , srcLoc = fmap mkSrcLoc (GHC.ExecutionStack.srcLoc loc)
    }

mkSrcLoc :: GHC.ExecutionStack.SrcLoc -> (String, Int, Int)
mkSrcLoc loc =
  ( GHC.ExecutionStack.sourceFile loc
  , GHC.ExecutionStack.sourceLine loc
  , GHC.ExecutionStack.sourceColumn loc
  )

getStackTrace :: IO (Maybe [Location])
getStackTrace =
  (fmap.fmap.fmap) mkLoc (GHC.ExecutionStack.getStackTrace)
