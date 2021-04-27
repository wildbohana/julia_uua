# niz studenata sortiranog po broju indeksa nalazi onog sa darim indeksom i ispisuje kojoj grupi se on nalazi (svaka grupa po 4 studenta)
# struct student ime prezime broj_indeksa

function grupe(Studenti, i)
	gr=1
	br=0
	for k in 1:i
		if br==4
			gr+=1
			br=1
		else
			br+=1
		end
	end
	return gr
end
