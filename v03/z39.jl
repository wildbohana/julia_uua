# ulaz A i el1, izlaz vekor v i skalar s
# v su svi el iz neparnih vrsta A koji su deljivi sa el1
# s je zbir svih el gl d A manjih od el1

# A=[1 2 3; 4 5 6; 7 8 9]

using LinearAlgebra
function kombo(A, el1)
	m,n=size(A)
	v=[]
	s=0
	for i in 1:2:m
		for j in 1:m
			if A[i,j]%el1==0
				push!(v,A[i,j])
			end
		end
	end
	for i in 1:m
		for j in 1:n
			if A[i,j]<el1
				s+=A[i,j]
			end
		end
	end
	return (v,s)
end
