# generiši matricu H 3x2 čiji su elementi Hij=1/(i+j)

using LinearAlgebra
m=3
n=2
H=zeros(m,n)
for i in 1:m
	for j in 1:n
		global H[i,j] = 1.0/(i+j)	  # mora 1.0 (realan broj) jer deliš
	end
end
display(H)
