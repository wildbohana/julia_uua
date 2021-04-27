# A=[1 2 3; 4 5 6]

function spi(A)			# spi kao suma elemenata sa parnim zbirom i+j tipa a11 a13...
	m,n=size(A)
	suma=0
	for i in 1:m
		for j in 1:n
			if (i+j)%2==0
				suma=suma+A[i,j]
			end
		end
	end
	return suma
end		
