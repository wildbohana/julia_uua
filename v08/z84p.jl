# u lab imaš još i rupe u koje se ne sme upasti prilikom traženja puta, vrv može bfs??

include("z84lab.jl")
include("z84.jl")
rows=5
cols=5
G=emptyLabyrinth(rows, cols)
defineNodesType!(G, [1 2 3 5 6 8 13 14 15 17 21 22 24 25], 'P')		# put
defineNodesType!(G, [4 7 9 16 18 19 20], 'Z')				# zid
defineNodesType!(G, [10 11 12 23], 'R')					# rupa
BFS!(G, 22)
path=getPath(G, 22, 6)
printLabyrinthPath(G, path)
