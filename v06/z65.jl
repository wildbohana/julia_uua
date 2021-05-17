# selection sort za niz reči

function selectionSort!(A)
	n=length(A)
	for i in 1:n-1
		najm=i
		for j in i+1:n
			if poredi(A[j], A[najm])
				najm=j
			end
		end
		if i!=najm
			A[[i najm]]=A[[najm i]]
		end
	end
end


function ponavljanje(A)
	temp1=0				# trenutni najveći broj ponavljanja
	temp2=0				# trenutni broj ponavljanja
	temp3=0				# indeks onog koji ima najviše ponavljanja
	for i in 1:length(A)-1
		if A[i].rec==A[i+1].rec
			temp2+=1
			if temp2>temp1
				temp1=temp2
				temp3=i
			end
		end
	end
	return temp3
end					# jebem ti radi ahahahahah
