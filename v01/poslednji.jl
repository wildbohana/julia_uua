# Primer 1.13 Neka je matricom A predstavljen pregled ocena studenata, gde svaka vrsta predstavlja različitog studenta. U prvoj koloni se nalaze brojevi indeksa studenata, a u ostalim ocene studenata po predmetima (svaki predmet jedna kolona).
# 1) Odrediti ukupan broj studenata i broj predmeta. 
# 2) Odrediti koliko je studenata ispunilo uslov da upiše višu godinu (uslov je najviše dva nepoložena ispita).
# 3) Odrediti redni broj najbolje ocenjenog predmeta i prosečnu ocenu na tom predmetu (ako ih ima više sa istom prosečnom ocenom – uzimamo redne brojeve svih). 
# 4) Odrediti redni broj predmeta sa najlošijom prolaznošću (ako ih ima više sa istom prolaznošću - najlošijom, uzimamo redne brojeve svih). 
# 5) Odrediti indeks studenta sa najboljim prosekom (ako ih ima vise sa istim prosekom – najboljim, vratiti u vektoru indekse svih).
# ----------------------------------------------------------------------------
A = [123 6 9 5 8 7 9 5; 234 8 9 7 8 7 10 10; 345 8 7 6 5 8 7 7; 456 5 9 6 5 7 8 5; 567 6 9 9 7 9 7 8; 789 9 7 9 8 7 9 10]

(brojRedova, brojKolona) = size(A)
brojStudenata = brojRedova
brojPredmeta = brojKolona - 1

matricaOcena = A[:,2:end]		# koristiće se više puta

matricaNepolozenihIspita = matricaOcena.==5
vektorIspunjenUslov = sum(matricaNepolozenihIspita,dims=2).<=2 #0.2: sum(А, 1)
brojIspunjenUslov = sum(vektorIspunjenUslov)

vektorProsecnihOcenaNaPredmetu = Statistics.mean(matricaOcena, dims=1) 
prosecnaOcenaNajboljeOcenjenogPredmeta = maximum(vektorProsecnihOcenaNaPredmetu)
redniBrojNajboljeOcenjenogPredmeta = findall(vektorProsecnihOcenaNaPredmetu .== 
prosecnaOcenaNajboljeOcenjenogPredmeta)

vektorNeprolaznostiPoPredmetu = sum(matricaNepolozenihIspita, dims=1) 
redniBrojPredmetaSaNajlosijomProlaznoscu = 
findall(vektorNeprolaznostiPoPredmetu.== maximum(vektorNeprolaznostiPoPredmetu))

vektorProsekaStudenata = Statistics.mean(matricaOcena, dims=2) #0.2: samo mean(А, 2)
najboljiProsek = maximum(vektorProsekaStudenata)
redniBrojeviStudenataSaNajboljomOcenom = findall(vektorProsekaStudenata .== 
najboljiProsek)
indeksiStudenataSaNajboljomOcenom = A[redniBrojeviStudenataSaNajboljomOcenom]
