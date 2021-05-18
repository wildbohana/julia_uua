# bfs za ostrva, rekurzivno

function BFS!(G)
	v=1:size(G.AdjMatrix, 1)
	for u in v
		G.V[u].color='W'
		G.V[u].pred=-1
	end
	bro=0			# broj ostrva
	for u in v
		if G.V[u].color=='W' && G.V[u].type=='P' && G.V[u].pred<=1
			bro+=1
			BFS_Visit!(G, u, bro)
		end
	end
end

function BFS_Visit!(G, u, bro)
	G.V[u].d=bro		# odmah na startu stavi koji je br ostva
	G.V[u].color='G'	# i setuj ga na sivo
	for v in findall(G.AdjMatrix[u,:].==1)
		if G.V[v].color=='W' && G.V[v].type=='P'
			BFS_Visit!(G, v, bro)
		end
	end
	G.V[u].color='B'	# a na kraju na crno
end
