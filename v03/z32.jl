# vraća rešenja kvadratne jednačine, ulaz a b c, izlaz x1 x2

function kvadratna(a,b,c)
	x1=(-(b)+sqrt(b^2-4*a*c))/2
	x2=(-(b)-sqrt(b^2-4*a*c))/2
	return x1,x2
end
