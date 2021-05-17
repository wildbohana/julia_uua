# DFS! algoritam radim wtf

function DFS!(G)
	v=1:size(G.AdjMatrix, 1)
	for u=v
		G.V[u].color='W'		# d očigledno nije bitno ovde
		G.V[u].pred=-1
	end
	for u=v
		if G.V[u].color == 'W'
			DFS_visit!(G, u)
		end
	end
end

function DFS_visit!(G, u)
	G.V[u].color = 'G'
	for v in findall(G.AdjMatrix[u,:].==1)
		if G.V[v].color == 'W'
			G.V[v].pred=u		# d definitivno nije bitno kod DFS
			DFS_visit!(G, v)
		end
	end
	G.V[u].color = 'B'
end
