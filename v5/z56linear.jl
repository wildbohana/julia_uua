# prebrojavanje kog broja ima najviše

function linearSearchSort(A)
	broj=0
	brojac1=0
	brojac2=0
	for k in 2:length(A)
		if A[k]==A[k-1]
			brojac1+=1
		elseif brojac1>brojac2
			brojac2=brojac1
			broj=A[k-1]
		end
	end
	return broj				# ovo nzm, možda samo izbacim
end
