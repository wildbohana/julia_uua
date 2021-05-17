# sortiranje elemenata niza u opadajućem redosledu - insertion sort

include("z51.jl")
niz=[1 23 54 3 2 5 9 32 8 -23 -1]
println("Niz pre sortiranja: ")
println(niz)
insertionSort(niz)
println("Niz posle sortiranja: ")
println(niz)
