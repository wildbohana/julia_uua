# ovde je samo niz običan stavljen, ali princip je isti
# primer niza: A=[1 2 3 3 4 5 6 6 7 6 5 10 8 4 5 3 1 9 11 4]
# u nizu moraš imati uzastopne vrednosti jer u suprotnom ne radi

function grupe(A)
	v=1:length(A)
	pamti=[]								# ovde se smešta šta mi treba
	
	for u in v
		if findall(pamti.==A[u]) == []		# ako se u nizu "pamti" već ne nalazi broj koji se nalazi u nizu A na poziciji u
			push!(pamti, A[u])				# onda taj broj koji je na adresi A[u] ubaci u niz "pamti"
		end
	end
	
	for i in 1:length(pamti)				# dobiju se neke loše vrednosti, nisu bitne, bitan je broj grupa samo
		pamti[i]=0							# samo setuješ ceo taj niz na nulu sa ovom petljom ovde
	end

	for u in v
		pamti[A[u]]+=1						# objašnjenje dole
	end		
	
	return pamti
end

# d, tj ovde A[u] će u sebi imati broj grupe (1,n), a i niz pamti ima n elemenata,
# što znači da se broj grupe može koristiti za pristup  elementima iz pamti
# to iskoristimo tako što ćemo u pamti[1] brojati koliko elemenata ima u prvoj grupi, 
# u pamti[2] koliko elemenata ima u grugoj itd tako što će nam G.V[u].d (ovde A[u]) biti indeks kom elementu
# iz pamti[] pristupamo i taj element po redu ćemo da # povećamo za 1 svaki put kada naletimo na
# taj broj u nizu pamti (zato se počinje od 0)
