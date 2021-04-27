# ulaz a i b, izlaz logično l1 i l2
# l1: suma skalara a i b je veća od njihovog proizvoda
# l2: a^b je veće od b^a

function logika(a,b)
	l1sum=a+b
	l1prod=a*b
	l2a=a^b
	l2b=b^a
	l1=l1sum>l1prod
	l2=l2a>l2b
	return l1,l2
end
