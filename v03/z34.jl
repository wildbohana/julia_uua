# ulazni d, el1, el2, el3, izlazna matrica A
# A je kv.mat dxd, sp d su el1, iznad sp d su el2, ispod sp d su el3

using LinearAlgebra
function matrica(d, el1, el2, el3)
	A=ones(d,d)
	A=Diagonal(A).*el1+triu(A,1)*el2+tril(A,-1)*el3
	return(A)
end
