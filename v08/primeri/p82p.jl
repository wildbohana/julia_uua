# lavirint 8x8, imaš poč i kraj pozicije, pronađi put do kraja i prikaži lav sa putanjom

include("p82lab.jl")
include("p82.jl")
start=57
exit=62
rows=8
cols=8
G=emptyLabyrinth(rows, cols)			# drugi način definisanja
defineNodesType!(G, 1:rows*cols, 'P')		# sve u put pa prepravi zidove
defineNodesType!(G, [5 9 19 11 13 15 21 23 24 26 28 29 31 34 44 45 46 47 50 55
58 60 61 63], 'Z')
defineNodesType!(G, [62], 'C')			# a cilj može isto biti tip polja
path=BFS!(G, start)
println("Ispis putanje i lavirinta posle obilaska: ")
println("$path")
printLabyrinthPath(G, path)
