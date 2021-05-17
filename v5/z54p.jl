# sortiranje fudbalskih klubova po bodovima, opadajuće, pravi i insertion i merge sort
# isti broj bodova -> gol razliku gledaj

include("z54klubovi.jl")
include("z54.jl")
insertionSort(klubovi)
println("Tabela posle Insertion Sort-a:")
ispisKlubova(klubovi)
mergeSort(klubovi)
println("Tabela posle Merge Sort-a:")
ispisKlubova(klubovi)

