"""A package for graph computations related to graph Laplacians

Graphs are represented by sparse adjacency matrices, etc.
"""
module Laplacians

#=

Started by Dan Spielman.
Other contributors:


This represents graphs as sparse adjacency matrices.
The reasons are twofold:
  # 1. It is much faster than the Graphs.jl library, and
  # 2. It is more compatible with linear algebraic operations

This module begins by importing the packages it requires.
It then defines a few functions for dealing with the graphs:
deg(graph, node),  nbri(graph, node, i)  and weighti(graph, node i).
Using these is slower than what we actually do in the code.
But, you can start with this and then convert.

This then includes code from other files,
and exports the functions for which it seems appropriate.

=#

  using DataStructures

#  using PyCall
#  pygui(:qt);
  using PyPlot

  include("graphUtils.jl")

  export deg
  export nbri
  export weighti
  export nbrs
  export setValue
  export backIndices

  include("graphGenerators.jl")

  export readIJ
  export ringGraph
  export generalizedRing
  export generalizedNecklace
  export randMatching
  export randRegular
  export grownGraph
  export grownGraphD
  export prefAttach
  export hyperCube
  export completeBinaryTree
  export completeGraph
  export pathGraph
  export grid2
  export grid2coords

  include("graphOps.jl")

  export unweight
  export mapweight
  export uniformWeight

  export edgeVertexMat

  export productGraph
  export subsampleEdges

  export twoLift
  export joinGraphs

  export plotGraph

  export shortIntGraph

  export lap
  export spectralCoords
  export spectralDrawing

  export toUnitVector

  export diagmat

  include("graphAlgs.jl")

  export components
  export vecToComps
  export shortestPaths
  export kruskal

  include("treeAlgs.jl")

  export RootedTree
  export matToTree
  export matToTreeDepth
  export tarjanStretch
  export compDepth
  export compStretches

  include("cutPageRank.jl")

  export pr
  export ppr
  export apr
  export prn

  include("pcg.jl")

  export cg
  export pcg

  include("flow.jl")

  export maxflow

end # module yinsGraph