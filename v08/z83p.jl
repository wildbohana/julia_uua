# ispiši broj soba (ostrva) preko bfs ???

include("z83lab.jl")
include("z83.jl")

function printLabyrinthIsle(G)
	for i in 1:G.rows
		for j in 1:G.cols
			print("$(G.V[(i-1)*G.cols+j]).d)")
		end
	println()
	end
end



rows=8
cols=8
G=emptyLabyrinth(rows, cols)
defineNodesType!(G, 1:(rows*cols), 'P')
defineNodesType!(G, [5 9 10 11 13 15 21 23 24 26 28 29 31 34 44 45 46 47 50 55 58 60 61 63], 'Z')
BFS!(G)
printLabyrinthType(G)
println()
printLabyrinthIsle(G)			# jel treba onog monstruma da izbacuje?
