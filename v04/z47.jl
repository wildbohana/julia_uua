# indeksi svih elemenata u sortianom nizu čija je vrednost == key (kao preko rekurzivne)

function LinearSearchAll(A, kljuc)
	rez=[]
	for i in 1:length(A)
		if A[i]==kljuc
			push!(rez, i)
		end
	end
	return rez
end
