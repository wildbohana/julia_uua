# insertion sort
function insertionSort(A)
	for j in 2:length(A)
		key=A[j]
		i=j-1
		while(i>0 && A[j]>key)
			A[i+1]=A[i]
			i-=1
		end
	A[i+1]=key
	end
end

# merge sort
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
	push!(L, typemax(Int64))
	push!(R, typemax(Int64))
	i=1
	j=1
	for k in p:r
		if L[i]<=R[j]
			A[k]=L[i]
			i+=1
		else
			A[k]=R[j]
			j+=1
		end
	end
end

# selection sort
function selectionSort!(A)
	n=length(A)
	for i in 1:n-1
		najv=i
		for j in i+1:n
			if A[j]>A[i]
				najv=j
			end
		end
		if i!=najv
			A[[i najv]]=A[[najv i]]
		end
	end
end

# quick sort
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
	q=A[r]
	i=p-1		    # ovo uvek zaboravljaš
	for j in p:r
		if A[i]<q
			i+=1
			A[[i j]]=A[[j i]]
		end
	end
	A[[i+1 r]]=A[[r i+1]]
	return i+1
end
