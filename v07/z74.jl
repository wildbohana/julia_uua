# BFS, proveravaš boju čvora i da li je d<=l, i getpath od A do B

function BFS!(G, p, k, l)
	v=1:size(G.AdjMatrix, 1)
	for u in v
		if u!=p
			G.V[u].color='W'
			G.V[u].d=typemax(Int)
			G.V[u].pred=-1
		end
	end
	G.V[p].color='W'
	G.V[p].d=0
	G.V[p].pred=-1
	
	Q=Int[]
	push!(Q, p)
	while ~isempty(Q)
		u=Q[1]
		deleteat!(Q, 1)
		if u==k
			path=Int[]
			temp=k
			while (temp!=p)
				path=[temp;path]
				temp=G.V[temp].pred
			end
			return [p;path]
		else
			for v in findall(G.AdjMatrix[u,:].>0)		# znači poveuan je
				if G.V[v].color=='W' && (G.V[v].d + G.AdjMatrix[u,v])<l
					G.V[v].color='G'
					G.V[v].d=G.V[u].d + G.AdjMatrix[u,v]	# pristup razdaljini, nisam sig zašto mora ovako ali evo ga
					G.V[v].pred=u
					push!(Q, v)
				end
			end
		G.V[u].color='W'
		end
	end
	return Int[]
end
