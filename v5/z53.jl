# merge sort, rastući redosled po indeksima

function poredi(st1, st2)
	if st1==typemax(Int64)
		return st1>st2
	elseif st2==typemax(Int64)
		return st1<st2
	else
		return st1.brI <= st2.brI
	end
end

function mergeSort(studenti)
	mergeSortStep(studenti, 1, length(studenti))
end

function mergeSortStep(A, p, r)
	if p<r
		q=Int(floor((p+r)/2))
		mergeSortStep(A, p, q)
		mergeSortStep(A, q+1, r)
		merge!(A, p, q, r)
	end
end

function merge!(A, p, q, r)
	maxstud=Student("najveći", typemax(Int64))		# moraš ovako max na kraj
	L=copy(A[p:q])
	R=copy(A[q+1:r])
	push!(L, maxstud)					# jer drugačije ovo ne radi
	push!(R, maxstud)					# poredi pogrešan tip podataka
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
