# graf iz primera 1, BFS obilazak, naći putanju od čvora 1 do čvora 3, prikaz grafa sa putanjom

include("p72.jl")
include("p72graph.jl")
M = [0 1 0 0 0 1 1; 
     0 0 0 0 0 1 0; 
     0 0 0 0 0 0 1;
     0 0 1 0 1 0 0; 
     0 0 0 0 0 0 0; 
     0 0 0 1 1 0 1;
     0 0 0 0 1 0 0]
G=nonEmptyGraph(M)
a=1
b=3
BFS!(G, a)
path=getPath(G, a, b)
println("Putanja od čvora $a do čvora $b je $path.")
printGraph(G)
