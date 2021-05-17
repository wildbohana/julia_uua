# sortiranje tenisera na atp listi, broj poena -> prezime -> ime (metoda proizvoljna)
# parovi: najbolje plasiran - najgore plasira, drugoplasiran - pretposlednji plasirani itd

include("z57atp.jl")
include("z57.jl")
println("Pre sortiranja:")
ispis(teniseri)
insertionSort!(teniseri)
println()
println("Posle sortiranja:")
ispis(teniseri)
# dodaj deo za parove (ako hoćeš, tbh mrzi me lol
