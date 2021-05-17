# obilazak grada DFS, umesto belog na kraju čvor je opet beli, getPath isto

function DFS!(G, p, k)			# ne može s i e jer je e=2.71...
	v=1:size(G.AdjMatrix, 1)
	for u=v
		G.V[u].color='W'
		G.V[u].pred=-1
	end
	DFS_Visit!(G, p, k, p)		# wtf ahahah
end

function DFS_Visit!(G, u, k, p)
	if u==k
		path=getPath(G, p, k)
		println("Put: $path")
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
end

function getPath(G, idStart, idEnd)
	path=[]
	temp=idEnd
	while(temp!=idStart)
		path=[temp; path]
		temp=G.V[temp].pred
	end
	return [idStart; path]
end
