# niz brojeva, rastuće, merge sort
# na kraju ispisi kojih brojeva ima više (kao linearna sa ponavljanjem?)

include("z56linear.jl")
include("z56.jl")
niz=[1 23 4 6 785 4 9 0 24 21 2 32 32 23 233 12 32 2389 5 64 534 32 14]
mergeSort!(niz)
println("Sortirani niz: ")
println(niz)
###### dopuni ######
x=linearSearchSort(niz)
println("Najviše brojeva ima: $x")
