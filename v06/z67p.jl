# za brojeve iz niza A: quick sort - opadajuće
# za niz B: ispisati da li se brojevi nalaze u prvoj ili drugoj polovini sortiranog niza

include("z67.jl")
include("z67binary.jl")
nizA=[1 43 3 2 12 4 5 6 42 2 34 54 56]
nizB=[34 1 43 42 4]
quickSort!(nizA)
println(nizA)
println()
pretraga=uB(nizA, nizB)
println("Brojevi iz niza B: $nizB se redom nalaze u sledecim polovinama niza A:")
println(pretraga)

# možda je trebao niz B da bude kopija niza A ??
