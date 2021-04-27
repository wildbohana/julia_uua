# ulazni parametri n i r (n>=r), izlazni y=n!/k!(n-k)!
# a) korsiti rekurzivnu funkciju faktorijel
# b) koristi rekurzivnu vezu y(n,k)=y(n-1,k)+y(n-1,k-1),y(n,n)=1,y(n,0)=1
# c) koristi rekurzivnu vezu y(n,k)=y(n,k-1)*(n-k+1)/k, y(n,0)=1

# a)
function binkoef(n,r)
	y=factorial(n)/(faktorial(k)*factorial(n-k))
	return y
end

# b) i c) nisam ni pokušavala
