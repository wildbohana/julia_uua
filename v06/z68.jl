# napokon quick sort ahahaha opadajući

function quickSort!(A)
	quickSortStep!(A, 1, length(A))
end

function quickSortStep!(A, p, r)
	if p<r
		q=partition!(A, p, r)
		quickSortStep!(A, 1, q-1)
		quickSortStep!(A, q+1, r)
	end
end

function partition!(A, p, r)
	q=A[r]					# pivot
	i=p-1
	for j in p:r-1
		if poredi(A[j], q)
			i+=1
			A[[i j]]=A[[j i]]
		end
	end
	A[[i+1 r]]=A[[r i+1]]
	return i+1				# opet si zaboravila
end	
