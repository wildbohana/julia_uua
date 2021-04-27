# matrica 5x5, gl. d. 2, sp. d. 6, ostali 0

using LinearAlgebra
n=5
A=zeros(n,n)
for i in 1:n
	for j in 1:n
		if i==j				# el na gl dijag (i=j)
			global A[i,j] = 2
		elseif (i+j)==(n+1)		# el na sp dijag (i=n-i+1)
			global A[i,j] = 6
		end
	end
end
display(A)

# na glavnoj:		i=j
# na sporednoj:	i,n-i+1	tj.	j=n-i+1	tj.	i+j=n+1
# iznad glavne:	i<j
# ispod sporedne:	i+j>n+1	(n iz m,n, drugi broj koji označava kolone)
