# matrica A, izlaz matrica B, istih dim, sadrži iste elemente kao i A, ali zamenjenu levu i desnu polovinu
# dva načina, sa i bez petlji
# A=[1 2 3 4; 4 3 2 1; 1 2 3 4; 4 3 2 1]


# bez petlje
function obrni(A)
	B=deepcopy(A)
	B=reverse(B, dims=2)
	return(B)
end

# sa petljom
function obrnipetlja(A)
	a1,a2=size(A)
	B=ones(a1,a2)
	global p=1				# ovde mora global ali nktm zašto baš baš mora
	global q=1				# ne može odraditi 21 liniju ako nema
	for i in 1:a1				# ide od gore do dole
		for j in a2:-1:1		# u suštini ide od desno ka levo
			B[p,q]=B[p,q]*A[i,j]
			if q<a2
				global q+=1
			end
		end
		global q=1			# resetuje vrednosti kada odradi red
		if p<a1				# provera da li je gotov ili ide na drugi red
			global p+=1
		end
	end
	return B
end
