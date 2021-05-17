# dfs osnovni

function DFS!(G)
	v=1:size(G.AdjMatrix, 1)
	for u=v
		G.V[u].color='W'			# d očigledno nije bitno ovde
		G.V[u].pred=-1
	end
	for u=v
		if G.V[u].color == 'W'  		# radi samo sa belim čvorovima
			DFS_visit!(G, u)
		end
	end
end

function DFS_visit!(G, u)
	G.V[u].color = 'G'
	for v in findall(G.AdjMatrix[u,:].==1)
		if G.V[v].color == 'W'  		# i uvek samo sa belim čvorovima
			G.V[v].pred=u			# d definitivno nije bitno kod DFS
			DFS_visit!(G, v)
		end
	end
	G.V[u].color = 'B'
end


# kada tražiš grupe tj ostrva, u polje d iz čvora ćeš čuvati broj grupe (bro)
function DFS!(G)
	v=1:size(G.AdjMatrix, 1)
	for u=v
		G.V[u].color='W'
		G.V[u].pred=-1
	end
	bro=0						# broj ostrva = 0
	for u=v
		if G.V[u].color=='W'			# ako je čvor beli
			bro=bro+1			# broj ostrva +1
			DFS_Visit!(G, u, bro)		# i odradi vizitu
		end
	end
end

function DFS_Visit!(G, u, bro)
	G.V[u].d=bro					# d nam ovde služi za pripadnost ostrvu
	G.V[u].color='G'
	for v in findall(G.AdjMatrix[u,:].==1)
		if G.V[v].color=='W'
			DFS_Visit!(G, v, bro)
		end
	end
	G.V[u].color='B'
end


# onaj čudan obliazak sa četiri parametra kada tražiš put preko dfs
function DFS!(G, p, k)
	v=1:size(G.AdjMatrix, 1)
	for u=v
		G.V[u].color='W'
		G.V[u].pred=-1
	end
	DFS_Visit!(G, p, k, p)				# wtf ahahah
end

function DFS_Visit!(G, u, k, p)
	if u==k
		path=getPath(G, p, k)   		# u drugom fajlu
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
