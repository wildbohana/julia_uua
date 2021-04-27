# algoritam, u nizu pronalazi br el koji su manji ili jednaki sa datim
# A=[1 2 3 4 5 6 7 8 9]	key = 4

function LinearAll(A, key)
	rez=0
	for i in 1:length(A)
		if A[i]<=key
			rez+=1
		end
	end
	return rez
end
