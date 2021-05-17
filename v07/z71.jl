# bfs sa ugrađenim getpath

function BFS!(G, s, k)
	v=1:size(G.AdjMatrix, 1)
	for u=v
		if v!=s
			G.V[u].color='W'
			G.V[u].d=typemax(Int)
			G.V[u].pred=-1
		end
	end
	G.V[s].color='G'
	G.V[s].d=0
	G.V[s].pred=-1
	
	Q=Int[]
	push!(Q,s)
	while ~isempty(Q)
		u=Q[1]
		deleteat!(Q, 1)
		if u==k
			path=Int[]
			temp=k
			while (temp!=s)
				path=[temp; path]
				temp=G.V[temp].pred
			end
			return [s; path]
		
		else
			for v in findall(G.AdjMatrix[u,:].==1)
				if G.V[v].color=='W'
					G.V[v].color='G'
					G.V[v].d=G.V[u].d+1
					G.V[v].pred=u
					push!(Q, v)
				end
			end
		G.V[u].color='B'
		end
	end
	return Int[]
end
