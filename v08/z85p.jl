# osim puta i zidova imaš i kovčege sa blagom, sa dfs nađi put koji kupi najviše kovčega

include("z85lab.jl")
include("z85.jl")

rows=8
cols=8
G=emptyLabyrinth(rows, cols)
defineNodesType!(G, 1:rows*cols, 'P')						# put
defineNodesType!(G, [5 10 11 13 15 21 23 24 28 29 31 34 46 47 55 58], 'Z')	# zid
defineNodesType!(G, [9 26 44 45 50 60 61 63], 'K')				# kovčeg
path=DFS!(G, 25, 26)
printLabyrinthPath(G, path)
numOfGold(G, path)
