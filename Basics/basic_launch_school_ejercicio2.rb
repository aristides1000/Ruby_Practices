numberToEvaluate = 5894
miles = numberToEvaluate / 1000
centenas = (numberToEvaluate % 1000) / 100
decenas = (numberToEvaluate % 100) / 10
unidades = numberToEvaluate % 10

puts "El número #{numberToEvaluate} posee #{miles} miles,"
puts "posee #{centenas} centenas,"
puts "posee #{decenas} decenas,"
puts "y posee #{unidades} unidades."