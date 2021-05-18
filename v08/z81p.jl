# lavirint 8x8, start, cilj, nađi putanju, dfs, putanja po izlazu iz rekurzije

include("z81lab.jl")
include("z81.jl")

rows=8
cols=8
G=emptyLabyrinth(rows, cols)
defineNodesType!(G, 1:(rows*cols), 'P')
defineNodesType!(G, [5 9 10 11 13 15 21 23 24 26 28 29 31 34 44 45 46 47 50 55 58 60 61 63], 'Z')
path=DFS!(G, 57, 62)
printLabyrinthPath(G, path)
