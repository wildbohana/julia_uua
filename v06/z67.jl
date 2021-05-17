# quick sort opadajuće

function quickSort!(A)
	quickSortStep!(A, 1, length(A))
end

function quickSortStep!(A, p, r)
	if p<r
		q=partition!(A, p, r)
		quickSortStep!(A, p, q-1)
		quickSortStep!(A, q+1, r)
	end
end

function partition!(A, p, r)
	q=A[r]				# pivot
	i=p-1
	for j in p:r-1			# p, ne 1
		if A[j]>q		# ne treba ti f-ja, nije struct
			i+=1
			A[[i j]]=A[[j i]]
		end
	end
	A[[i+1 r]]=A[[r i+1]]
	return i+1			# vraćaš ovo ne zaboravi
end

function uB(A, B)
	polovine=[]
	mid=Int64(floor((1+length(A))/2))
	for i in 1:length(A)
		for j in 1:length(B)
			if B[j]==A[i]
				if i<=mid			# zašto ga sortira??
					push!(polovine, 1)
				else
					push!(polovine, 2)
				end
			end
		end
	end
	return polovine
end
