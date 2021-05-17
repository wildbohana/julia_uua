# selection sort - opadajući

function selectionSort!(A)
	n=length(A)
	for i in 1:n-1
		najv=i
		for j in i+1:n
			if A[j]>A[najv]
				najv=j
			end
		end
		if i!=najv
			A[[i najv]] = A[[najv i]]
		end
	end
end

function razlika(A)
	delta=0						# najmanja razlika je 0 (a=b)
	temp=0
	for i in 2:length(A)
		temp=abs(A[i]-A[i-1])
		if temp>delta
			delta=temp
		end
	end
	return delta
end
