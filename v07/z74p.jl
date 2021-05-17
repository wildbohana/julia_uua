# samostalan rad
# graf, čvorovi gradovi, grane outevi, za svaki put je poznata dužina
# program koji traži put između dva grada A i B ako je poznato da na putu ne sme da postoji put duži od d kilometara
# ideja: korisiti bfs,umesto br 1, u matrici susedstava pamtiti dužinu puta i pri proveri da li je grad beo, proveriti da li je put do njega manji od d
# BROOO ovo radi na ukupnu dužinu i ako se desi da bude predugačko zaglavi cela petlja

include("z74.jl")
include("z74graph.jl")
M = [0 3 0 0 0 0 1; 
     3 0 0 0 0 0 0; 
     1 0 0 5 8 0 0;
     0 0 5 0 0 0 3; 
     0 0 8 0 0 4 0; 
     0 0 0 0 4 0 1;
     1 0 0 3 0 1 0]
G=nonEmptyGraph(M)
A=2
B=5
l=10
path=BFS!(G, A, B, l)
println("Path: $path")
