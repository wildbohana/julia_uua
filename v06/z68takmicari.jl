# takmicari za z68

struct Takmicar
	prez::String
	poeni::Int
	ime::String
end

takmicari=[]

push!(takmicari, Takmicar("Budisavljević", 195, "Luka"))
push!(takmicari, Takmicar("Mihajlović", 213, "Bokica"))
push!(takmicari, Takmicar("Mihajlović", 214, "Duxpir"))
push!(takmicari, Takmicar("Dragosavljević", 186, "Veseli"))
push!(takmicari, Takmicar("Stanojev", 212, "Zoran"))
push!(takmicari, Takmicar("Todorov", 212, "Luru"))
push!(takmicari, Takmicar("Ognjanović", 193, "Levak"))
push!(takmicari, Takmicar("Pilipović", 200, "Bole"))
push!(takmicari, Takmicar("Popov", 222, "Kris"))
push!(takmicari, Takmicar("Mećava", 221, "Mećava"))
push!(takmicari, Takmicar("Živković", 215, "Džofihofi"))
push!(takmicari, Takmicar("Maksimović", 204, "Combiši"))

using Printf
function ispisTakmicara(A)
	for i in 1:length(A)
		@printf("%3i. %-15s %-10s, %4i\n", i, A[i].prez, A[i].ime, A[i].poeni)
	end
end

function poredi(t1, t2)
	return t1.poeni<t2.poeni || (t1.poeni==t2.poeni && t1.prez<t2.prez) || (t1.poeni==t2.poeni && t1.prez==t2.prez && t1.ime<t2.ime)
end
