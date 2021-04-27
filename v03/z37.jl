# ulaz a b, izlaz m i n (zadati izrazi)

using Base.MathConstants
function funkcije(a,b)
	m=ceil((sin((pi/2)+a)/a)*sqrt(abs(a+1))*e^b)
	n=abs((factorial(a))/(cos(pi/2-a)+a^(b+1)))
	return m,n
end
