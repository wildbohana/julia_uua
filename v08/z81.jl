# dfs koji vraća putanju

function DFS!(G, p, k)
	v=1:size(G.AdjMatrix, 1)
	for u in v
		G.V[u].color='W'
	end
	return DFS_Visit!(G, p, k)
end

function DFS_Visit!(G, p, k)
	path=Int[]
	if p==k
		path=[p]
		return path
	end
	G.V[p].color='G'
	for v in findall(G.AdjMatrix[p,:].==1)
		if G.V[v].color=='W' && G.V[v].type=='P'
			path=DFS_Visit!(G, v, k)
			if length(path)!=0
				return [p;path]
			end
		end
	end
	G.V[p].color='B'
	return path
end
