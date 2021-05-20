include("z41graph.jl")
include("z41.jl")

G = emptyGraph(8)

G.V[1].ime = "Vladislav"
G.V[1].prezime = "Petrovic"
G.V[2].ime = "Dušan"
G.V[2].prezime = "Kovačević"
G.V[3].ime = "Miroslav"
G.V[3].prezime = "Antić"
G.V[4].ime = "Siniša"
G.V[4].prezime = "Pavić"
G.V[5].ime = "Jovan"
G.V[5].prezime = "Jovanović"
G.V[6].ime = "Milovan"
G.V[6].prezime = "Glišić"
G.V[7].ime = "Isidora"
G.V[7].prezime = "Sekulić"
G.V[8].ime = "Stevan"
G.V[8].prezime = "Sremac"

G.AdjMatrix = [0 4 5 3 0 0 0 0;
               4 0 2 0 0 0 0 0;
               5 2 0 0 0 0 0 0;
               3 0 0 0 0 0 0 0;
               0 0 0 0 0 6 0 0;
               0 0 0 0 6 0 3 1;
               0 0 0 0 0 3 0 8;
               0 0 0 0 0 1 8 0]

DFS!(G)
printGraph(G)
ispisGrupa(G)
