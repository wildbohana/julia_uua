# bro - broj ostrva
# DFS_Visit! će odraditi vizitu u svim čvorovima do kojih može da dođe a to su baš ta ostrva
# i onda će se u povećavati dok ne nađe neobiđeni čvor, tu povećaš broj ostrva i opet vizita

function DFS!(G)
	v=1:size(G.AdjMatrix, 1)
	for u=v						# beli čvorovi - svi iz grafa
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
