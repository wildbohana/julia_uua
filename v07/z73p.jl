# dat je graf, čvorovi su gradovi, grane putevi, naći sve puteve između dva grada A i B
# korisiti DFS, umesto da na kraju čvor bude crn, postavi ga opet na belog da bi se pronašli i ostali putevi kroz taj grad

include("z73.jl")
include("z73graph.jl")
M = [0 1 1 0 0 0 1; 
     1 0 0 0 0 0 0; 
     1 0 0 1 1 0 0;
     0 0 1 0 0 0 1; 
     0 0 1 0 0 1 0; 
     0 0 0 0 1 0 1;
     1 0 0 1 0 1 0]
G=nonEmptyGraph(M)
DFS!(G, 1, 6)
printGraph(G)
