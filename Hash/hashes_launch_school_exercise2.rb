# La principal diferencia entre merge y merge! es que el segundo es destructivo, osea sobreescribe el valor del hash, en cambio el primero no es destructivo y no sobre escribe los valores, este sería el ejemplo

hash1 = {:uno => "uno", :dos => "dos"}
hash2 = {:tres => "tres", :cuatro => "cuatro"}
hash3 = {:cinco => "cinco", :seis => "seis"}
hash4 = {:siete => "siete", :ocho => "ocho"}

p hash1.merge(hash2)

p hash1
p hash2

p hash3.merge!(hash4)

p hash3
p hash4
