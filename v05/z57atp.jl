# lista atp i poređenje i ispis

struct Tenis
	poeni::Int
	prezime::String
	ime::String
end

teniseri=[]
push!(teniseri, Tenis(1000, "Đoković", "Novak"))
push!(teniseri, Tenis(1000, "Đoković", "Danilo"))
push!(teniseri, Tenis(1232, "Federer", "Rodžer"))
push!(teniseri, Tenis(123, "Milutinović", "Blagoje"))
push!(teniseri, Tenis(753, "Maršal", "Borislav"))
push!(teniseri, Tenis(976, "Novak", "Nikola"))
push!(teniseri, Tenis(2045, "Mihajlović", "Božidar"))
push!(teniseri, Tenis(53, "Vučić", "Aleksandar"))

function poredi(teniser1, teniser2)
	return teniser1.poeni>teniser2.poeni || (teniser1.poeni==teniser2.poeni && teniser1.prezime>teniser2.prezime) || (teniser1.poeni==teniser2.poeni && teniser1.prezime==teniser2.prezime && teniser1.ime>teniser2.ime)
end

using Printf
function ispis(teniseri)
	for i in 1:length(teniseri)
		@printf("%2i. %-15s %-15s, %4i\n", i, teniseri[i].prezime, teniseri[i].ime, teniseri[i]. poeni)
	end
end
