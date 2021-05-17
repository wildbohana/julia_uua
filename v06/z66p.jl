# selekšn sort, niz košarkaša po visini rastuće, ako su ==, po poziciji opadajuće
# razlika između najvišeg i najnižeg igrača

include("z66.jl")
include("z66kosarkasi.jl")
selectionSort!(kosarkasi)
ispisKosarkasa(kosarkasi)
delta=razlika(kosarkasi)
println("Razlika u visini između najvišeg i najnižeg igrača je: $delta.")
