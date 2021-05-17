# selection sort rastuće

function selectionSort!(A)
	n=length(A)
	for i in 1:n-1
		najm=i
		for j in i+1:n
			if poredi(A[j], A[najm])
				najm=j
			end
		end
		if i!=najm
			A[[najm i]] = A[[i najm]]
		end
	end
end
