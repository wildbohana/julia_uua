# bfs osnovni oblik

function BFS!(G, s)
	v=1:size(G.AdjMatrix, 1)
	for u in v
		if u!=s
			G.V[u].color='W'
			G.V[u].d=typemax(Int)
			G.V[u].pred=-1
		end
	end
	G.V[s].color='G'
	G.V[s].d=0
	G.V[s].pred=-1
	
	Q=Int[]
	push!(Q, s)
	while ~isempty(Q)
		u=Q[1]
		deleteat!(Q, 1)
		for v in findall(G.AdjMatrix[u,:].==1)
			if G.V[v].color == 'W'
				G.V[v].color = 'G'
				G.V[v].d = G.V[u].d+1
				G.V[v].pred = u
				push!(Q, v)
			end
		end
		G.V[u].color = 'B'
	end
end


# kada ugrađuješ getPath, napravi if u==k za getPath i else za prolaz, na kraju return Int[]
# getPath sa BFS uvek vraća najkraći mogući put
# kada imaš uslov da je d<n, kod findall stavi da je d>0, i u toj petlji kao uslov dodaš i (G.V[v].d + G.AdjMatrix[u,v])<l, a kod izmena ispod d će viti G.V[v].d=G.V[u].d + G.AdjMatrix[u,v]
# kod prolaza kroz gradove isl na kraju čvor postavi da bude beo da bi se moglo opet prolaziti kroz njega
