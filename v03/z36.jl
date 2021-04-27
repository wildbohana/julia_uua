# skalari d, el1, el2 -> matrica A
# kvadratna matrica A, dimenzija dxd, neparne vrste el1, parne vrste el2

function matrica(d,el1,el2)
	A=ones(d,d)
	for i in 1:2:d
		A[i,:]*=el1
	end
	for i in 2:2:d
		A[i,:]*=el2
	end
	return(A)
end
