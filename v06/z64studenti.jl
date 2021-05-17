# studenti za z64

struct Student
	ime::String
	prez::String
	brI::Int
end

studenti=[]
push!(studenti, Student("Aca", "Stock", 123))
push!(studenti, Student("Daca", "Dakić", 13))
push!(studenti, Student("Saša", "Rajak", 94))
push!(studenti, Student("Pera", "Perić", 64))
push!(studenti, Student("Veljko", "Konj", 34))
push!(studenti, Student("Cica", "Mici", 12))
push!(studenti, Student("Beba", "Blek", 9))
push!(studenti, Student("Frća", "Beli", 1))

using Printf
function ispisStudenata(A)
	for i in 1:length(A)
		@printf("%3i. %-9s %-9s\n", A[i].brI, A[i].ime, A[i].prez)
	end
end

function poredi(st1, st2)
	return st1.prez>st2.prez || (st1.prez==st2.prez && st1.ime>st2.ime) || (st1.prez==st2.prez && st1.ime==st2.ime && st1.brI>st2.brI)
end
