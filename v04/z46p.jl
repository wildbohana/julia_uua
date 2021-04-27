# poziv za z46.jl
include("z46.jl")
include("studenti.jl")

kriterijum=[8.2 9.3]
rez=kandidati(studenti, kriterijum)

if length(rez)==0
	println("Ne postoje studenti sa prosekom u ovom opsegu.")
else
	for k in 1:length(rez)
		i=rez[k]
		println("$(studenti[i].ime), $(studenti[i].prezime), $(studenti[i].br_ind), $(studenti[i].prosek)")
		println()
	end
end
