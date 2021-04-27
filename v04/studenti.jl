# studenti.jl

struct Student
	ime::String
	prezime::String
	br_ind::Int
	prosek::Float64
end

studenti=Array{Student}(undef, 4)
studenti[1]=Student("Milos", "Teodosić", 21, 8.4)
studenti[2]=Student("Arsenije", "Knežević", 43, 8.9)
studenti[3]=Student("Bojana", "Mihajlović", 83, 9.2)
studenti[4]=Student("Dejan", "Dobrilović", 85, 6.3)
