module Graph.Inductive
  ( -- * Graph
    Gr
  , UGr
    -- * Static graphs
  , Graph(..)
  , mkUGraph
  , order
  , size
  , nodes
  , edges
  , context
  , lab
  , neighbors
  , lneighbors
  , suc
  , pre
  , lsuc
  , lpre
  , out
  , inn
  , outdeg
  , indeg
  , deg
  , hasNeighbor
  , hasNeighborAdj
  , hasEdge
  , hasLEdge
  , equal
  , gelem
  , gsel
  , gfold
  , ufold
  , hasLoop
  , isSimple
  , newNodes
    -- ** Articulation points
  , ap
    -- ** Breadth-first search
  , bfs
  , bfsn
  , bfsWith
  , bfsnWith
  , level
  , leveln
  , bfe
  , bfen
  , bft
  , lbft
  , esp
  , lesp
    -- ** Depth-first search
  , CFun
  , dfs
  , dfs'
  , dfsWith
  , dfsWith'
  , dff
  , dff'
  , dffWith
  , dffWith'
  , xdfsWith
  , xdfWith
  , xdffWith
  , udfs
  , udfs'
  , udff
  , udff'
  , udffWith
  , udffWith'
  , rdff
  , rdff'
  , rdfs'
  , rdffWith
  , rdffWith'
  , topsort
  , topsort'
  , scc
  , reachable
  , components
  , noComponents
  , isConnected
  , condensation
    -- ** Dominators
  , dom
  , iDom
    -- ** Voronoi diagrams
  , Voronoi
  , gvdIn
  , gvdOut
  , voronoiSet
  , nearestNode
  , nearestDist
  , nearestPath
    -- ** Independent node sets
  , indep
  , indepSize
    -- ** Minimum spanning trees
  , msTreeAt
  , msTree
  , msPath
    -- ** Max flow
  , getRevEdges
  , augmentGraph
  , updAdjList
  , updateFlow
  , mfmg
  , mf
  , maxFlowgraph
  , maxFlow
  , Network
  , ekSimple
  , ekFused
  , ekList
    -- ** Shortest path
  , Heap
  , spTree
  , sp
  , spLength
  , dijkstra
    -- * Dynamic graphs
  , DynGraph(..)
  , buildGr
  , insNode
  , insNodes
  , insEdge
  , insEdges
  , delNode
  , delNodes
  , delEdge
  , delEdges
  , delLEdge
  , delAllLEdge
  , gmap
  , nmap
  , emap
  , nemap
  , gfiltermap
  , nfilter
  , labnfilter
  , labfilter
  , subgraph
  , grev
  , undir
  , unlab
  , efilter
  , elfilter
    -- ** Bi-connected components
  , bcc
    -- ** Pretty-printing
  , prettify
  , prettyPrint
    -- ** Transitive/reflexive closure
  , trc
  , rc
  , tc
    -- * Misc. types
    -- ** Node
  , Node
  , LNode
  , UNode
    -- ** Edge
  , Edge
  , LEdge
  , UEdge
  , toEdge
  , edgeLabel
  , toLEdge
    -- ** Context
  , Context
  , MContext
  , UContext
  , node'
  , lab'
  , labNode'
  , neighbors'
  , lneighbors'
  , suc'
  , pre'
  , lpre'
  , lsuc'
  , out'
  , inn'
  , outdeg'
  , indeg'
  , deg'
    -- ** Decomposition
  , Decomp
  , GDecomp
  , UDecomp
    -- ** Path
  , Path
  , LPath(..)
  , UPath
    -- ** Tree
  , RTree
  , LRTree
    -- ** Adj
  , Adj
    -- ** OrdGr
  , OrdGr(..)
  ) where

import Data.Graph.Inductive.Basic
import Data.Graph.Inductive.Graph
import Data.Graph.Inductive.PatriciaTree
import Data.Graph.Inductive.Query

-- TODO:
-- DFS
-- Dominators
-- GVD
-- Indep
-- MST
-- MaxFlow
-- MaxFlow2
-- Monad
-- SP
-- TransClos
