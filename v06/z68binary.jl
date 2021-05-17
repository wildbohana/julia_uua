function binarySearch(A, key)
	p = 1
	r = length(A)
	while (p<=r)
		q = Int(floor((p+r)/2))
		if q == key
			return q
		elseif q > key
			r = q - 1
		else
			p = q + 1
		end
	end
	return -1
end

function binarna(A, prvi, drugi)
	x=binarySearch(A, prvi)
	y=binarySearch(A, drugi)
	if A[x].poeni>A[y].poeni
		return x
	else
		return y
	end
end
