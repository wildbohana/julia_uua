# dfs za gradove, grane su put, naći sve putanje međusobno i onda naći najkraću

path=[]
dist=[]

function DFS!(G, p, k)
	v=1:size(G.AdjMatrix, 1)
	for u in v
		G.V[u].color='W'
		G.V[u].pred=-1
	end
	DFS_Visit!(G, p, k, p)		# opet zašto ovo jebote
	return path, dist
end

function DFS_Visit!(G, u, k, p)
	if u==k
		put=getPath(G, p, k)
		push!(path, put)
		push!(dist, G.V[k].d)
	else
		G.V[u].color='G'
		for v in findall(G.AdjMatrix[u,:].>0)
			if G.V[v].color=='W'
				G.V[v].pred=u
				G.V[v].d=G.V[u].d + G.AdjMatrix[u,v]
				DFS_Visit!(G, v, k, p)
			end
		end
		G.V[u].color='W'
	end
end

function getPath(G, p, k)
	path=[]
	temp=k
	while temp!=p
		path=[temp;path]
		temp=G.V[temp].pred
	end
	return [p;path]
end
