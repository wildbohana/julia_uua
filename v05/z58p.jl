# sortiranje studenata opadajuće po broku poena na prijemnom, ispis po grupama od n studenata

include("z58.jl")
include("z58studenti.jl")
n=4
grupa=2
mergeSort!(studenti)
ispisStudenata(studenti, n, grupa)
display(studenti)

