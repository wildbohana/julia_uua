# rekurzivno faktorijel, n!=n*(n-1)!	  &	0!=1

function faktorijel(n)
	if n>0
		return n*faktorijel(n-1)
	else
		return 1
	end
end
