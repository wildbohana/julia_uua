# A=[1 2 3; 4 5 6; 7 8 9]

function svpun(A)				# srednja vrednost svih parnih elemenata u neparnim kolonama
	m,n=size(A)
	suma=0.0				# 0.0 zbog deljenja
	k=0
	for i in 1:2:m				# neparne kolone
		for j in 2:2:n			# parni elementi
			suma=suma+A[i,j]
			k+=1
		end
	end
	sredina=suma/k
	return sredina
end
