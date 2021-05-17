# quick sort niza - opadajući

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
	i=p-1				# i pre početka niza
	for j in p:r-1			# NE DIRAŠ r jer ti je r pivot
		if A[j]>=q		# promena znaka da bi bio obrnut redosled
			i+=1		# menjaš samo one koji su veći od q
			A[[i j]] = A[[j i]]
		end
	end
	A[[i+1 r]] = A[[r i+1]]		# na kraju samo staviš pivot na mesto u nizu
	return i+1
end

function razliciti(A)
	broj=1				# krećeš od 1 (ako je prazna lista onda jebiga ahah)
	for i in 2:length(A)		# za praznu listu je sigurnije ona push! metoda
		if A[i-1]!=A[i]
			broj+=1
		end
	end
	return broj
end
			
