# quick sort od najmanjeg do najvećeg (a je manje od b itd)

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
	q=A[r]				# pivot sa kraja niza
	i=p-1				# i pre početka niza
	for j in p:r-1
		if poredi(q, A[j])
			i+=1
			A[[i j]]=A[[j i]]
		end
	end
	A[[i+1 r]]=A[[r i+1]]		# pivot smeštaš
	return i+1			# pozicija q ili vrednost lol
end	
