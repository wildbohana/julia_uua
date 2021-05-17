# merge sort po broju bodova

function mergeSort!(studenti)
	mergeSortStep!(studenti, 1, length(studenti))
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
	maxstud=Student("", typemin(Int64))		# za opadajuće stavljaš typemin
	L=copy(A[p:q])
	R=copy(A[q+1:r])
	push!(L, maxstud)
	push!(R, maxstud)
	i=1
	j=1
	for k in p:r
		if poredi(L[i], R[j])
			A[k]=L[i]
			i+=1
		else
			A[k]=R[j]
			j+=1
		end
	end
end
	
