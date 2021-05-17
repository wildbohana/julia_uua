# univerzalna getPath

function getPath(G, idStart, idEnd)
  path=[]
  temp=idEnd
  while temp!=idStart
     path=[temp; path]
     temp=G.V[temp].pred
  end
  return [idStart; path]
end
