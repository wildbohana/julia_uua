function binarySearch(A, key)
	p = 1
	r = length(A)
	while (p<=r)
		q = Int(floor((p+r)/2))
		if A[q] == key
			return q
		elseif A[q] > key
			r = q - 1
		else
			p = q + 1
		end
	end
	return -1
end

function polovina(brojevi, trazeni)
	x=binarySearch(brojevi, trazeni)
	y=Int(floor((1+length(brojevi))/2))
	if x<=y
		return 1
	else
		return 2
	end
end	
