# sortiraj brojeve kuća rastući - insertion sort
# nađi kuću sa traženim rednim brojem i odredi jel u 1 ili 2 polovini ulice - binary search

include("z55.jl")
include("z55binary.jl")
brojevi=[1 23 32 2 21 12 5 76 8 9 55 4 3 6 7 77 66 88]
trazeni=9
insertionSort!(brojevi)
println(brojevi)
p=polovina(brojevi, trazeni)
println("Kuća sa brojem $trazeni se nalazi u $p. polovini ulice.")
