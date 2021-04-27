# ulaz kv mat A, izlaz skalar - redni broj vrste sa minimalnom sumom
# A=[1 2 3; 4 5 6; 7 8 9]

using LinearAlgebra
function skalar(A)
	m,n=size(A)
	sume=[]
	for i in 1:m
		suma=0
		for j in 1:n
			suma+=A[i,j]
		end
		push!(sume, suma)
	end
	poz=minimum(sume)
	s=1
	for i in 1:m
		if sume[i]==poz
			break
		else
			i+=1
			s+=1
		end
	end	
	return s
end
