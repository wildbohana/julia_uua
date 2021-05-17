# selection sort - opadajući redosled

function mergeSort!(A)
	mergeSortStep!(A, 1, length(A))
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
	L=copy(A[p:q])
	R=copy(A[q+1:r])
	push!(L, typemin(Int64))		# menjaš u typemin
	push!(R, typemin(Int64))		# menjaš u typemin
	i=1
	j=1
	for k in p:r
		if L[i]>=R[j]			# samo obrneš znak u >=
			A[k]=L[i]
			i+=1
		else
			A[k]=R[j]
			j+=1
		end
	end
end
