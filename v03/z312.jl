# proizvod prvih n neparnih brojeva

function neparni(n)
	pro=1
	for i in 1:n
		if i%2==1
			pro*=i
		end
	end
	return pro
end
