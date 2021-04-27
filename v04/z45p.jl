# poziv za z45.jl
include("z45.jl")

A=[1 2 3 4 5 6 7 8 9]
key=4

kriterijum=LinearAll(A,key)
println("Broj $key je veći ili jednak od $kriterijum broja iz ovog niza.")
