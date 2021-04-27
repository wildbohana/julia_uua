# svi studenti sa pros ocenom u opsegu, ispisuje podatke
# prvi ulazni parametar je niz struktura, drugi ulazni je vekor od 2 el - granice opsega

# Studenti=[student1, student 2...]
# Opseg=[8.2 9.3]

function kandidati(studenti, Opseg)
	rez=[]
	for i in 1:length(studenti)
		if studenti[i].prosek>Opseg[1] && studenti[i].prosek<Opseg[2]
			push!(rez, i)
		end
	end
	return rez
end
	
