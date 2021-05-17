# selection sort, sortirati reči u rečniku zadate kao niz stringova
# prebroj koje reči se najviše puta pojavljuju

include("z65.jl")
include("z65recnik.jl")
selectionSort!(recnici)
indeks=ponavljanje(recnici)
common=recnici[indeks]
ispisRecnika(recnici)
println("Najviše se ponavljala reč: $common")
