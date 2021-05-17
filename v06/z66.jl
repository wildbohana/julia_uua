# selekšn sort, visina rastuće, pozicija opadajuće

function selectionSort!(A)
	n=length(A)
	for i in 1:n-1
		nizak=i
		for j in i+1:n
			if poredi(A[j], A[nizak])
				nizak=j
			end
		end
		if i!=nizak
			A[[i nizak]]=A[[nizak i]]
		end
	end
end

function poredi(k1, k2)
	return k1.visina<k2.visina || (k1.visina==k2.visina && k1.poz>k2.poz)
end

function razlika(A)
	n=length(A)
	x=A[n].visina-A[1].visina
	return x
end
