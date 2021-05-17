# sa dfs pretražiti graf sa slike

include("p73graph.jl")
include("p73.jl")
M=[0 1 0 1 0 0;
   0 0 0 0 1 0;
   0 0 0 0 1 1;
   0 1 0 0 0 0;
   0 0 0 1 0 0;
   0 0 0 0 0 1]
G=nonEmptyGraph(M)
DFS!(G)			# ovde nema početnog čvora, šalješ samo graf
printGraph(G)
