# više izlaza, 1 start. bfs
# tražiš put od izlaza do starta umesto od starta do izlaza

function BFS!(G, s, A)
	path=[]
	v=1:length(G.V)
	for u in v
		G.V[u].color='W'
		G.V[u].pred=-1
	end
	
	Q=Int[]
	for i in 1:length(A)
		G.V[A[i]].color='W'
		G.V[A[i]].pred=-1
		push!(Q, A[i])
	end
	
	while ~isempty(Q)
		u=Q[1]
		deleteat!(Q, 1)
		if u==s			# ako naiđemo na start, onda tražiš putanju
			temp=u
			while temp!=-1	# jer start ima pred=-1
				path=[temp; path]
				temp=G.V[temp].pred
			end
			return path
		else
			for v in findall(G.AdjMatrix[u,:].==1)
				if G.V[v].color=='W' && G.V[v].type!='Z'
					G.V[v].color='G'
					G.V[v].pred=u
					push!(Q, v)
				end
			end
		end
		G.V[u].color='B'
	end
	return path
end
