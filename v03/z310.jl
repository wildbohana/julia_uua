# interval a b, vektor svih neparnih celih brojeva

function vektor(a,b)
	v=[]
	for i in a:b
		if i%2==1
			push!(v,i)
		end
	end
	return v
end
