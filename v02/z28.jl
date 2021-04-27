# ulaz vektor A, izlaz vektor B, suma svih elemenata vektora A do odgovarajućeg elementa (tipa za 3 je suma prva tri elementa itd)
# A=[1 2 3 4 5]

function vektor(A)
	n=length(A)
	niz=[]
	suma=0
	for i in 1:n
		suma+=A[i]
		push!(niz, suma)
	end
	return niz
end
