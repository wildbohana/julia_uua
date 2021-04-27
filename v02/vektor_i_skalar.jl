# ulazni parametar funkcije kv.mat. A, izlazni vektor m i skalar s
# vektor - elementi sa gl. dijag. A, skalar je srednja vrednost el. iznad gl. dijag. A

using LinearAlgebra
A=[1 2 3; 3 4 5; 5 6 7]
function vis(A)				# vis kao vektor i skalar
	(na,ma)=size(A)
	m=[]				# vektor
	tempS=0				# temp za sumu koja ti treba za prosek
	k=0				# brojač koji ti treba za prosek
	for i in 1:na
		push!(m,A[i,i])		# u vektor m dodaj elemente iz A sa i,i pozic
		for j=1:ma
			if i<j		# uslov da bude ispod sporedne
				tempS=tempS+A[i,j]
				k=k+1
			end
		end
	end
	s=tempS/k			# skalar do kraja
	return vec(m),s			# konverzija vektora kolone u vektor vrste i skalar s
end
