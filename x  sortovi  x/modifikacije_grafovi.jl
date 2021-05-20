# modifikacije za BFS

# 1. ugrađeni getpath, posle deleteat! praviš if else uslov
# na kraju celog bfs staviš return Int[] i poslednji end
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
		# i ono ostalo regularno iz bfs
	end
G.V[u].color='B'
end

# 2. težinski graf -> d nije 1 nego je >= od 1
  # komšije (tj da su povezani) i da li je d manje od nekog l
	for v in findall(G.AdjMatrix[u,:].>0)
		if G.V[v].color=='W' && (G.V[v].d + G.AdjMatrix[u,v])<l
			G.V[v].color = 'G'
			G.V[v].d = G.V[u].d + G.AdjMatrix[u,v]
			G.V[v].pred=u
			push!(Q,v)
		end
	end




# modifikacije za DFS

# 1. broj ostrva - korisiš d polje iz čvora za to, ugl se koristi DFS za ostrva
  # DFS!(G)
  bro=0
  for u in v
	if G.V[u].color=='W'
		bro=bro+1
		DFS_Visit!(G, u, bro)
	end
  end
  # DFS_Visit!(G, u, bro)
  G.V[u].d=bro
  G.V[u].color='G'
  for v in findall(G.AdjMatrix[u,:].==1)
  	if G.V[v].color=='W'
  		DFS_Visit!(G, v, bro)
  	end
  end

# 2. obilazak grada sa DFS, ugrađen getPath i na kraju umesto crnog čvor setuješ na beli
  # DFS!(G, p, k) - uobičajeno sve na bele i posle toga čisto pozoveš
  DFS_Visit!(G, p, k, p)
  # DFS_Visit!(G, u, k, p)			# z75.jl
  if u==k
  	path=getPath(G, p, k)			# standardni getPath
  else
  	G.V[u].color='G'
  	for v in findall(G.AdjMatrix[u,:].==1)
  		if G.V[v].color=='W'
  			G.V[v].pred=u
  			DFS_Visit!(G, v, k, p)
  		end
  	end
  	G.V[u].color='W'
  end
  
# 3. obilazak gradova sa DFS, naći sve međusobne putanje i onda naći najkraću
  path=[]
  dist=[]
  # DFS!(G, p, k)				# z76.jl
  for u in v
  	# sve u belo
  end
  DFS_Visit!(G, p, k, p)
  return path, dist				# wtf hahhhaah
  # DFS_Visit!(G, u, k, p)
  if u==k
  	put=getPath(G, p, k)			# standardni getPath
  	push!(path, put(
  	push!(dist, G.V[k].d)			# jer je k element niza
  else
  	G.V[u].color='G'
  	for v in findall(G.AdjMatrix[u,:].>0)
  		if G.V[v].color=='W'
  			G.V[v].pred = u
  			G.V[v].d = G.V[u].d + G.AdjMatrix[u,v]
  			DFS_Visit!(G, v, k, p)
  		end
  	end
  	G.V[u].color='W'
  end
  
 		
