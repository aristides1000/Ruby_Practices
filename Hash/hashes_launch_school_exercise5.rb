# mi respuesta
=begin
hash_example = {:uno => "uno", :dos => "dos", :tres => "tres", :cuatro => "cuatro", :cinco => "cinco", :seis => "seis", :siete => "siete", :ocho => "ocho"}

puts "give me a value did you wanna ask"
ask_value = gets.chomp

count = 0

hash_example.each do |key, value|
  if value == ask_value
    count += 1
  end
end

if count > 0
  puts "El valor existe dentro del hash"
else
  puts "El valor no existe dentro del hash"
end
=end

# Respuesta del portal
=begin
opposites = {positive: "negative", up: "down", right: "left"}

# para ello debemos hacer uso del metodo "has_value?"

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope"
end
=end
