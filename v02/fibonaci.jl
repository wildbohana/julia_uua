# vektor f sa elementima fib. niza koji su manji od 1000
# nije radio jer mu je falilo global kod i

f=[1,1]
i=1
while f[i]+f[i+1]<1000
	push!(f, f[i]+f[i+1])		# push dodaje na kraj niza
	global i=i+1
end
print(vec(f))	# vec() konvertuje vektor kolone u vektor vrste
