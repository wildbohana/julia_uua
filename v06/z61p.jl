# niz brojeva u opadajučem redosledu - selection sort, najveća razlika između dva susedna broja

include("z61.jl")
niz=[23 4 54 56 7 8 3 12 0 93 -23 -43 -2 -3 -3 -65]
selectionSort!(niz)
println("Sortiran niz: ")
println(niz)
delta=razlika(niz)
println("Najveća razlika: $delta")
