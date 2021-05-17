# quick sort - opadajuči, prebrojati različite brojeve u nizu

include("z63.jl")
niz=[1 1 23 4 5 6 7 8 83 37 2 3 4 7 83 734 589 487 84 3]
quickSort!(niz)
println(niz)
diff=razliciti(niz)
println("U ovom nizu ima $diff različitih brojeva.")
