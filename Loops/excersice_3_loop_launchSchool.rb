# Escriba un método que realice una cuenta regresiva hasta cero mediante la recursividad.

# Mi respuesta
=begin
def final_count_down(number)
  puts number
  if number > 0
    final_count_down(number - 1)
  end
end

final_count_down(50)
=end

# respuesta del curso
=begin
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number - 1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)
=end
