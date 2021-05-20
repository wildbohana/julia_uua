# modifikacije za bfs

# 1. jedan start, više izlaza -> tražiš put od izlaza do starta umesto od starta do izlaza
while ~isempty(Q)
	u=Q[1]
	deleteat!(Q,1)
	if u==s
		temp=u
		while temp!=-1			# jer start ima pred -1 koji će postati temp
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

# 2. rekurzivno bfs za ostrva - isto kao što bi uradila za dfs? msm ne vidim razliku u kodu

# 3. bfs sa dodatnim uslovima - samo ih dodaš logično



# modifikacije za dfs

#1. dfs koji vraća putanju
  # DFS!(G, p, k)					# z82.jl
  for u in v
  	G.V[u].color='W'
  end
  return DFS_Visit!(G, p, k)
  
  # DFS_Visit!(G, p, k)
  path=Int[]
  if p==k
  	path=[p]
  	return path
  end
  G.V[p].color='G'
  for v in findall(G.AdjMatrix[p,:].==1)
  	in G.V[v].color=='W' && G.V[v].type=='P'
  		path=DFS_Visit!(G, v, k)
  		if length(path)!=0
  			return [p;path]
  		end
  	end
  end
  G.V[p].color='B'
  return path
  
# 2. dfs koji traži kovčege na putu
# taktika je na se nađu svi putevi do blaga i da se ispita koji u sebi ima najviše kovčega
  # DFS!(G, p, k) -> identično kao malopre		# z85.jl
  # DFS_Visit!(G, p, k)
  path=Int[]
  if p==k
  	path=[p]
  	return path
  end
  G.V[p].color='G'
  for v in findall(G.AdjMatrix[p,:].==1)
  	if G.V[v].color=='W' && G.V[v].type!='Z' || G.V[v].type=='K'
  		path=DFS_Visit!(G, v, k)
  		if length(path)!=0
  			return [p; path]
  		end
  	end
  end
  G.V[p].color='B'
  return path













