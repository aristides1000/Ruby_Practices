hash_example = {:uno => "uno", :dos => "dos", :tres => "tres", :cuatro => "cuatro", :cinco => "cinco", :seis => "seis", :siete => "siete", :ocho => "ocho"}

## Mi respuesta

# primer programa
=begin
p hash_example.keys
=end

# segundo programa
=begin
p hash_example.values
=end

# tercer programa
=begin
p hash_example.keys + hash_example.values
=end

## La respuesta oficial
opposites = {positive: "negative", up: "down", right: "left"}

# primer programa
=begin
opposites.each_key { |key| puts key }
=end

# segundo programa
=begin
opposites.each_value { |value| puts value }
=end

# tercer programa
=begin
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }
=end
