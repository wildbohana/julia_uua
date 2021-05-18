# 8x8, više izlaza, jedan start, nađi najkraći put
# to kreneš od exit pa koji pre stigne do starta lol

include("z82lab.jl")
include("z82.jl")
rows=8
cols=8
G=emptyLabyrinth(rows, cols)
defineNodesType!(G, 1:(rows*cols), 'P')
defineNodesType!(G, [5 9 10 11 13 15 21 23 24 26 28 29 31 34 44 45 46 47 50 55 58 60 61 63], 'Z')
izlazi=[1 8 62 64]
path=BFS!(G, 57, izlazi)
println("Path = $path")
printLabyrinhPath(G, path)
