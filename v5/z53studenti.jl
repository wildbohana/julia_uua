# studenti za z53

struct Student
	ime::String
	brI::Int
end

function ispisStudenata(studenti)
	for i in 1:length(studenti)
		println("$i. $(studenti[i].ime), $(studenti[i].brI)")
	end
end

studenti=[]
push!(studenti, Student("Marko Markovic", 13))
push!(studenti, Student("Nikola Tomic", 8))
push!(studenti, Student("Srdjan Knezevic", 5))
push!(studenti, Student("Vanja Kovacevic", 17))
push!(studenti, Student("Nenad Nikolic", 16))
push!(studenti, Student("Ivana Ivanovic", 2))
push!(studenti, Student("Branislav Tomic", 9))
push!(studenti, Student("Stefan Zivkovic", 3))
