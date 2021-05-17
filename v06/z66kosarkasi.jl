# kosarkasi za z66

struct Kosarkas
	ime::String
	visina::Int
	poz::String
end

kosarkasi=[]

push!(kosarkasi, Kosarkas("Budisavljević", 195, "bek"))
push!(kosarkasi, Kosarkas("Mihajlović", 213, "centar"))
push!(kosarkasi, Kosarkas("Dragosavljević", 186, "vezni"))
push!(kosarkasi, Kosarkas("Stanojev", 212, "bek"))
push!(kosarkasi, Kosarkas("Todorov", 212, "centar"))
push!(kosarkasi, Kosarkas("Ognjanović", 193, "bek"))
push!(kosarkasi, Kosarkas("Pilipović", 200, "prednji"))
push!(kosarkasi, Kosarkas("Popov", 222, "prednji"))
push!(kosarkasi, Kosarkas("Mećava", 221, "bek"))
push!(kosarkasi, Kosarkas("Živković", 215, "centar"))
push!(kosarkasi, Kosarkas("Maksimović", 204, "bek"))


using Printf
function ispisKosarkasa(A)
	for i in 1:length(A)
		@printf("%-15s %4i %-8s\n", A[i].ime, A[i].visina, A[i].poz)
	end
end
