# vektor a=collect(1:25:1120)	dobiješ vektor kolone koji ne možeš prepraviti u vrstu, on je vektor dim nx1
# vektor a=[3 9 13 58 83 128 192 186 8 1 854 999]

function dometi(a)
	n=length(a)				# size vraća 2 vrednosti, ovo samo jednu
	domet10=[]
	domet100=[]
	domet1000=[]
	for i in 1:n
		if a[i]>=0 && a[i]<10
			push!(domet10,a[i])	# matrica u koju ubacuješ, element
		elseif a[i]<100
			push!(domet100,a[i])
		elseif a[i]<1000		# ne moraš onako dva uslova jer prvi svakako nije ispunjen
			push!(domet1000,a[i])	# nego staviš ovako (drugi bi ti tebao ako bi imala neg br)
		end
	end
	return domet10,domet100,domet1000
end
			
