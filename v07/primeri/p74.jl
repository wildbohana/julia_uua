# bfs modifikovan, d=2 (prijatelj + prijatelj, 1+1=2)

function BFS!(G, ime, prezime)
	s=-1
	sugg=[]
	
	# tražimo redni broj korisnika tj id
	for i in 1:length(G.V)
		if G.V[i].ime==ime && G.V[i].prezime==prezime
			s=i
			break
		end
	end
	if s==-1
		println("Ne postoji korisnik sa zadatim imenom.")
		return []
	else println("Id zadatog korisnika je: $s")
	end
	
	# a sad ide potraga za suggestions
	v=length(G.V)
	for u=v
		if u!=s
			G.V[u].color='W'
			G.V[u].d=typemax(Int64)
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
		if G.V[u].d<2
			for v in findall(G.AdjMatrix[u,:].==1)
				if G.V[v].color=='W'
					G.V[v].color='G'
					G.V[v].d=G.V[u].d+1
					G.V[v].pred=u
					push!(Q, v)
				end
			end
		end
		if G.V[u].d==2		# ovo je ono d=2 od gore što sam rekla
			push!(sugg, G.V[u])
		end
		G.V[u].color='B'
	end
	return sugg
end
