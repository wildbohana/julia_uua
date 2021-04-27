# ulazni matrica A i vektor V, izlazni matrica B - u B je broj ponavljanja elemenata na toj poziciji u A u vektoru V

# A=[1 2 3; 4 5 6]
# V=[1 1 2 2 2 3 5 5 6 6 6 6]

function ponavljanje(A,V)
	m,n=size(A)
	B=zeros(m,n)
	o=length(V)
	broj=0
	for i in 1:m
		for j in 1:n
			for k in 1:o
				if A[i,j]==V[k]
					broj+=1
				end
			end
			B[i,j]=broj
			broj=0
		end
	end
	return(B)
end			
