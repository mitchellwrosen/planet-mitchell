module Graph.Inductive
  ( -- * Graph
    Gr,
    UGr,
    -- * Static graphs
    Graph(..),
    mkUGraph,
    order,
    size,
    nodes,
    edges,
    context,
    lab,
    neighbors,
    lneighbors,
    suc,
    pre,
    lsuc,
    lpre,
    out,
    inn,
    outdeg,
    indeg,
    deg,
    hasNeighbor,
    hasNeighborAdj,
    hasEdge,
    hasLEdge,
    equal,
    gelem,
    gsel,
    gfold,
    ufold,
    hasLoop,
    isSimple,
    newNodes,
    ap,
    bfs,
    bfsn,
    bfsWith,
    bfsnWith,
    level,
    leveln,
    bfe,
    bfen,
    bft,
    lbft,
    esp,
    lesp,
    -- * Dynamic graphs
    DynGraph(..),
    buildGr,
    insNode,
    insNodes,
    insEdge,
    insEdges,
    delNode,
    delNodes,
    delEdge,
    delEdges,
    delLEdge,
    delAllLEdge,
    gmap,
    nmap,
    emap,
    nemap,
    gfiltermap,
    nfilter,
    labnfilter,
    labfilter,
    subgraph,
    grev,
    undir,
    unlab,
    efilter,
    elfilter,
    bcc,
    prettify,
    prettyPrint,
    -- * Misc. types
    -- ** Node
    Node,
    LNode,
    UNode,
    -- ** Edge
    Edge,
    LEdge,
    UEdge,
    toEdge,
    edgeLabel,
    toLEdge,
    -- ** Context
    Context,
    MContext,
    UContext,
    node',
    lab',
    labNode',
    neighbors',
    lneighbors',
    suc',
    pre',
    lpre',
    lsuc',
    out',
    inn',
    outdeg',
    indeg',
    deg',
    -- ** Decomposition
    Decomp,
    GDecomp,
    UDecomp,
    -- ** Path
    Path,
    LPath(..),
    UPath,
    -- ** RTree
    RTree,
    -- ** Adj
    Adj,
    -- ** OrdGr
    OrdGr(..),
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
