a=log10(100)/log10(10)
println(a)

using Base.MathConstants
b=floor((1+cos(pi/4))/1.2)
println(b)

c=sqrt(3^2+4^2)
println(c)

d=ceil((sin(pi/2-5))/exp(5))
println(d)

r=12
v=(4/3)*r^3*pi

f=ones(4,7)*3
display(f)

g=Diagonal[1,2,3,4]+zeros(4,4)
g[g.==0].=8	# sve nule menja sa osmicom
display(g)

# max el u neparnim kolonama
maxEl=maximum(A[:, 1:2:end])

# min el u parnim kolonama i njihova pozicija
minEl=minimum(A[:, 2:2:end])
pos=findall(A[:, 2:2:end].==minEl)
pos

# matrica 5x5, uzimaš el spor dijag i veći su od 7
h=Random.rand(5,5)*100
sd=Diagonal(reverse(h, dims=2))	# spoljašnja dijag je isto što i obrnuta glavna
rez=sd[sd.>7]

# matrica 6x6, sve jedinice osim u uglovima gde su dvojke
i=ones(6,6)
i[[1,end],[1,end]].=2	# ne radi
display(i)


# samostalno
x=ones(4,4)
x=triu(x,1).*5+tril(x,-1).*2+Diagonal(x).*4	# ovo mora u paketu da bi sve radilo
display(x)	# ovaj broj pored triu pomera red ispred ili iznad dijagonale
		# bez broja pokupi tačno od dijagonale pa gore

# matrica 10x10, random, izdvoj sve elemente iznad sporedne dijag u poseban vektor
y=Random.rand(10,10)*100
vy=triu(reverse(y, dims=2),1)	# gornji trougao od y koje je obrnuto levo desno
display(vy)

# proizvoljna matrica, redni broj vrste sa maks zbirom elemenata
z=[1 2 3; 4 5 6; 7 0 0]
zbir=sum(z, dims=2)	# 2 označava da el po kolonama sabira da stvori zbir vrste
maks=maximum(zbir)
indeksi=findall(zbir.==maks)
rez=indeksi[1][1]	# kao praviš matricu 1x1 od ovoga (tj vektor jer je 1 dim)
println("Maks = $(zbir[rez]) za indeks $rez")	# $ ide ispred vrednosti, [x] je index

# logička vrednost da li je proizvod svih elemenata u parnim redovima veći od sume svih elemenata u neparnim kolonama
q=[1 2 3; 4 5 6; 7 0 0]
sumaNeparne=sum(z[:, 1:2:end])	# sve vrste, svaka druga kolona
proParni=prod(prod(z[2:2:end, :], dims=2))	# mora dva puta prod (ne radi bool)
println("$(proParni>sumaNeparne)")		# $ vraća vrednost poređenja

# linearna jednačina, tri promenljive, funkcija za rešenje	# A*x=B
# 3x+2z-3z = 3		# x+2z-z   = 5		# 2x+2y+z  = 10
A=[3 2 -3; 1 2 -1; 2 2 1]
B=[3; 5; 10]
X=inv(A)*B	# postoji i inv za matrice
display(X)
