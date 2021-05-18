# lavirint 5x5, start pozicija 21, kraj 5, pretraži pomoću bfs, prikaži najkraću putanju

include("p81lab.jl")
include("p81.jl")
rows=5
cols=5
G=emptyLabyrinth(rows, cols)
defineNodesType!(G, [1 2 3 5 6 8 10 11 12 13 14 15 17 21 22 23 24 25], 'P')
defineNodesType!(G, [4 7 9 16 18 19 20], 'Z')
BFS!(G, 21)
println("Izgled lavirinta sa putanjom: ")
path=getPath(G, 21, 5)
printLabyrinthPath(G, path)
