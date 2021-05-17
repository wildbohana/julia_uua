# funkcija koja grupiše korisnike tako da se u svakoj grupi može doći od jednog do drugog korisnika vezama prijateljstava
# zadatak uraditi tako da se strukturi koja predstavlja korisnika doda polje koje označava pripadnost grupi (ostrvu)

include("z72graph.jl")
include("z72.jl")
M=[0 1 1 0 0 0 0; 
   1 0 0 0 0 0 0; 
   1 0 0 0 0 0 0;
   0 0 0 0 0 0 1; 
   0 0 0 0 0 1 0; 
   0 0 0 0 1 0 0;
   0 0 0 1 0 0 0]
G=nonEmptyGraph(M)
path=DFS!(G)
printGraph(G)
