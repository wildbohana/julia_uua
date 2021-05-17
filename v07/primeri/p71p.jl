# bfs algoritam, pretražiti graf sa slike, početni čvor je 1
# kod matrice samo u jednom smeru napišeš 1 ako su povezane a ne u oba jer dobiješ kurac tako

include("p71.jl")
include("p71graph.jl")
M = [0 1 0 0 0 1 1; 
     0 0 0 0 0 1 0; 
     0 0 0 0 0 0 1;
     0 0 1 0 1 0 0; 
     0 0 0 0 0 0 0; 
     0 0 0 1 1 0 1;
     0 0 0 0 1 0 0]
s=1
G=nonEmptyGraph(M)
BFS!(G, s)
printGraph(G)
