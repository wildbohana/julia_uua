function DFS!(G)
    v = 1:size(G.AdjMatrix, 1)
    for u in v
        G.V[u].color = 'W'
        G.V[u].pred = -1
    end
    bro=0					# broj ostrva
    for u in v
        if G.V[u].color == 'W'
            bro+=1
            DFS_Visit!(G, u, bro)
    
        end
    end
end

function DFS_Visit!(G, u, bro)
    G.V[u].color='G'
    G.V[u].d=bro

    for v in findall(G.AdjMatrix[u, :].>3)
        if G.V[v].color == 'W' 
            DFS_Visit!(G, v, bro)
        end
    end
    G.V[u].color = 'B'
end

function grupe(G)
	v=1:size(G.AdjMatrix, 1)
	pamti=[]				# ovde se smešta šta mi treba
	for u in v
		if findall(pamti.==G.V[u].d) == []
			push!(pamti, u)
		end				# dobiju se neke loše vrednosti, nisu nam bitne, bitan nam je broj grupa samo
	end					# samo setuješ ceo taj niz na nulu
	
	for i in 1:length(pamti)		# objašnjenje u pizdarija.jl
		pamti[i]=0
	end
	
	for u in v
		pamti[(G.V[u].d)]+=1
	end					
	
	return pamti
end

function ispisGrupa(G)
	pamti=grupe(G)
	for i in 1:length(pamti)
		println("$i. grupa ima $(pamti[i]) članova.")
	end
end
