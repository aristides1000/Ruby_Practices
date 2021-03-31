=begin
puts "Hello there"
=end

=begin
print 123
=end

# Aquí lo va a imprimir en la misma línea porqeu usa print
=begin
print 123
print 456
print 789
=end

# Aqui va a imprimir cada instruccion en una linea diferente
=begin
puts 123
puts 456
puts 789
=end

# puts también trata a las matrices de forma diferente
# puts [1, 2]

# print [1, 2]

# puts y print tratan a los nil de forma diferente
# puts [1, nil, nil, 1]

# print [1, nil, nil, 1]

# Aquí podemos ver una importante diferencia entre puts y p, puts retorna nil, en cambio p retorna el valor de lo que le pasamos al p como parámetro para que imprimiera
# puts "Ruby is cool"

# p "Ruby is cool"

# para ver estas diferencias tenemos que hacerlo en el irb de ruby ne el terminal
=begin
def numbers
  # puts 123
  p 123
end

numbers
=end

# pp hace alución a pretty prin y sirve para imprimir grandes hashes & arrays de una manera más agradable
# require 'pp'

# pp "Hello World"
