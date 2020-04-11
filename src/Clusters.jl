"""
    Clusters

Module implementing various cluster trees and block cluster trees to be used in the construction of hierarchical matrices.
"""
module Clusters

using LinearAlgebra: norm
using Statistics: median
using AbstractTrees
using RecipesBase

import AbstractTrees: children, print_tree

export
    #main types
    ClusterTree,
    BlockTree,
    #splitters
    CardinalitySplitter,
    GeometricMinimalSplitter,
    GeometricSplitter,
    QuadOctSplitter,
    #admissibility
    StrongAdmissibilityStd,
    WeakAdmissibilityStd,
    #convenience functions
    print_tree

const Maybe{T} = Union{Tuple{},T}

include("point.jl")
include("hyperrectangle.jl")
include("clustertree.jl")
include("splitter.jl")
include("blocktree.jl")
include("admissibility.jl")

include("parameters.jl")

end#module
