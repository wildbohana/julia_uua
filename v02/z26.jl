# dve kv mat istih dim: A=[1 2 3; 4 5 6; 7 8 9] i B=[9 8 7; 6 5 4; 3 2 1]
# vektor m - elem iznad gl d A i elem ispod sp d B
# skalar s - suma pozitvnih elemenata deljivih sa 3 iz matrice B

# gornja dijag: i<j
# sporedna dijag: i+j<n+1

function dvemat(A,B)
	(ma,na)=size(A)
	(mb,nb)=size(B)
	m=[]
	s=0
	for i in 1:ma
		for j in 1:na
			if i<j
				push!(m,A[i,j])
			end
		end
	end
	for i in 1:mb
		for j in 1:nb
			if i+j>nb+1
				push!(m, B[i,j])
			end
			if B[i,j]>0 && rem(B[i,j],3)==0
				s+=B[i,j]
			end
		end
	end
	return m,s
end		
