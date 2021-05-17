# insertion sort
function insertionSort(klubovi)
	for j in 2:length(klubovi)
		key=klubovi[j]
		i=j-1
		while(i>0 && uporedi(key, klubovi[i]))
			klubovi[i+1]=klubovi[i]
			i-=1
		end
	klubovi[i+1]=key
	end
end


# merge sort
function mergeSort(klubovi)
	mergeSortStep!(klubovi, 1, length(klubovi))
end

function mergeSortStep!(A, p, r)
	if p<r
		q=Int(floor((p+r)/2))
		mergeSortStep!(A, p, q)
		mergeSortStep!(A, q+1, r)
		merge!(A, p, q, r)
	end
end

function merge!(A, p, q, r)
	maxklub=Klub("", typemin(Int64), 0, 0)		# najmanja gol razlika je 0
	L=copy(A[p:q])
	R=copy(A[q+1:r])
	push!(L, maxklub)
	push!(R, maxklub)
	i=1
	j=1
	for k in p:r
		if uporedi(L[i], R[j])
			A[k]=L[i]
			i+=1
		else
			A[k]=R[j]
			j+=1
		end
	end
end
