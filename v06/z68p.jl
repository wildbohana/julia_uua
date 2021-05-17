# sortirati takmičare po prezimenu i imeni rastuće - quick sort
# nađi dva takmičara binarnom i ispiši koji je osvojio veći broj poena (ime, prez, brPoena)

include("z68.jl")
include("z68takmicari.jl")
include("z68binary.jl")
quickSort!(takmicari)
ispisTakmicara(takmicari)
s=binarna(takmicari, 3, 7)
println()
println("Od ova dva igrača više poena ima takmičar: ")
display(takmicari[s])			# zašto neće onako println lepo samo za jednog ??
