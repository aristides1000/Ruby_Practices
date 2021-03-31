numberToEvaluate = 4560
Miles = numberToEvaluate / 1000
Centenas = numberToEvaluate % 1000
Decenas = numberToEvaluate % 100
Unidades = numberToEvaluate % 10

puts 'este número posee ' + Miles.to_s + ' miles,'
puts 'posee ' + Centenas.to_s + ' centenas,'
puts 'posee ' + Decenas.to_s + ' decenas,'
puts 'posee' + Unidades.to_s + ' unidades.'