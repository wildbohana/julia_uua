# korisnice društvene mreže, grupe prijateljstava, grupe, DFS (d je grupa ovde)

function DFS!(G)
	v=1:size(G.AdjMatrix, 1)
	for u in v
		G.V[u].color='W'
		G.V[u].pred=-1
	end
	bro=0					# broj ostrva
	for u=v
		if G.V[u].color=='W'
			bro=bro+1
			DFS_Visit!(G, u, bro)
		end
	end
end

function DFS_Visit!(G, u, bro)
	G.V[u].d=bro
	G.V[u].color='G'
	for v in findall(G.AdjMatrix[u,:].==1)
		if G.V[v].color=='W' && G.V[u].pol=='z'
			# G.V[v].pred=u
			DFS_Visit!(G, v, bro)
		end
	end
	G.V[u].color='B'
end
