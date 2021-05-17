# samostalan rad
# graf, čvorovi gradovi, grane putevi, svaki put ima dužinu d
# program koji traži najkraći put između dva grada A i B
# ideja - DGS pretraga svih puteva pa izabrati najmanji

include("z76.jl")
include("z76graph.jl")
M = [0 3 0 0 0 0 1; 
     3 0 0 0 0 0 0; 
     1 0 0 5 8 0 0;
     0 0 5 0 0 0 3; 
     0 0 8 0 0 4 0; 
     0 0 0 0 4 0 1;
     1 0 0 3 0 1 0]
G=nonEmptyGraph(M)
A=4
B=3
path, dist = DFS!(G, A, B)

if path==[] || dist==[]
	println("Nema najkraćeg puta!")
else
	junk, najkraci = findmin(dist)
	println("Put: $(path[najkraci]) je udaljenosti $(dist[najkraci])")
	printGraph(G)
end
