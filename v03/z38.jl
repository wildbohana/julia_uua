# ulaz kv mat A i B istih dim i slakar el1
# izlaz mat C i skalar s, C je istih dim kao A i B, iznad gl d elementi mat A iznad gl d, ispod gl d elementi mat B ispod gl d, na dijag elementi el1
# skalar s je prosek svi el iz A koji su veći od el1

# A=[1 2 3;4 5 6;7 8 9]
# B=[3 2 1;4 5 6;9 8 7]


using LinearAlgebra
function premestanje(A,B,el1)
	m,n=size(A)
	C=ones(m,n)
	C=triu(A,1)+tril(B,-1)+Diagonal(C).*el1
	suma=0.0
	broj=0
	for i in 1:m
		for j in 1:n
			if A[i,j]>el1
				suma+=A[i,j]
				broj+=1
			end
		end
	end
	s=suma/broj
	return C,s
end
