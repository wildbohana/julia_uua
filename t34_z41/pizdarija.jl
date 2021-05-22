# ovde je samo niz običan stavljen, ali princip je isti
# primer niza: A=[1 2 3 3 4 5 6 6 7 6 5 10 8 4 5 3 1 9 11 4]
# u nizu moraš imati uzastopne vrednosti jer u suprotnom ne radi (nije za to dizajniran)


function grupe(A)
	v=1:length(A)
	pamti=[]	   # ovde se smešta šta mi treba
	for u in v
		if findall(pamti.==A[u]) == []
			push!(pamti, A[u])		# izmena
		end
	end
	   		# dobiju se neke loše vrednosti, nisu bitne, bitan je broj grupa samo
	   		# samo setuješ ceo taj niz na nulu
	for i in 1:length(pamti)
		pamti[i]=0
	end

	for u in v
		pamti[A[u]]+=1
	end		# d će u sebi imati broj grupe (1-4) a i niz pamti ima 4 elementa
			# što znači da se broj grupe može koristiti za pristup elementima iz pamti
	  		# i to iskoristimo tako što ćemo u pamti[1] pamtiti koliko el ima 
			# u prvoj grupi, u pamti[2] koliko elemenata ima u grugoj itd
			# tako što će nam G.V[u].d biti indeks kom elementu iz pamti[] pristupamo
			# i taj element po redu ćemo da povećamo za 1 (zato se počinje od 0)
	return pamti
end
