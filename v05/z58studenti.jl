# studenti za z58

struct Student
	ime::String
	bod::Int
end

function ispisStudenata(studenti, n, grupa)
	for i in n*(grupa-1)+1 : n*grupa				# very gg
		println("$i. $(studenti[i].ime), $(studenti[i].bod)")
	end
end

studenti=[]
push!(studenti, Student("Marko Markovic", 97))
push!(studenti, Student("Nikola Tomic", 82))
push!(studenti, Student("Srdjan Knezevic", 12))
push!(studenti, Student("Vanja Kovacevic", 56))
push!(studenti, Student("Nenad Nikolic", 45))
push!(studenti, Student("Ivana Ivanovic", 21))
push!(studenti, Student("Branislav Tomic", 76))
push!(studenti, Student("Stefan Zivkovic", 56))

function poredi(st1, st2)
	return st2.bod<=st1.bod || (st2.bod==st1.bod && st2.ime<st1.ime)
end
