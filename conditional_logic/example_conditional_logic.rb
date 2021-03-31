# Sintaxis if
=begin
if statement_to_be_evaluated == true
  #do something awesome...
end
=end

=begin
if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end
=end

# Simplificación del if en Ruby, una sola línea
=begin
puts "Hot diggity dawn, 1 is less than 2" if 1 < 2
=end

=begin
attack_by_land = true

if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end
=end

=begin
attack_by_land = true
attack_by_sea = false

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end
=end

# puedo tener la elsif que quiera, la else es opcional

# eql? comprueba tanto el tipo de valor como el valor real que contiene.

=begin
5.eql?(5.0) # => false; aunque tienen el mismo valor, uno es un número entero y el otro es un flotante
5.eql?(5) # => true
=end

# equal?comprueba si ambos valores son exactamente el mismo objeto en la memoria. Esto puede resultar un poco confuso debido a la forma en que las computadoras almacenan algunos valores de eficiencia. Por lo general, regresarán dos variables que apuntan al mismo número true.

=begin
a = 5
b = 5
puts a.equal?(b)
=end

# Esta expresión es cierta debido a la forma en que las computadoras almacenan números enteros en la memoria. Aunque dos variables diferentes tienen el número 5, apuntan al mismo objeto en la memoria. Sin embargo, considere el siguiente ejemplo de código:

=begin
a = "hello"
b = "hello"
puts a.equal?(b)
=end

# Esto sucede porque las computadoras no pueden almacenar cadenas de la misma manera eficiente que almacenan números. Aunque los valores de las variables son los mismos, la computadora ha creado dos objetos de cadena separados en la memoria.

# Operador de Nave espacial <=> devuelve lo siquiente:

# -1 si el valor de la izquierda es menor que el valor de la derecha;
# 0 si el valor de la izquierda es igual al valor de la derecha; y
# 1 si el valor de la izquierda es mayor que el valor de la derecha.

# ejemplos

=begin
5 <=> 10 # => devuelve -1
10 <=> 10 # => devuelve 0
10 <=> 5 # => devuelve 1
=end

# El operador de nave espacial o spaceship operator se usa más comúnmente en funciones de clasificación o sorting functions

# Operadores Lógicos
# && (and), || (or), ! (not)

=begin
if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end
=end

# Esto tamvién podríamos escribirlo de la siguiente manera

=begin
if 1 < 2 and 5 < 6
  puts "Party at Kevin's!"
end
=end

# Operador || (or)
# devuelve true si al menos una condición es true

=begin
if 10 < 2 || 5 < 6
  puts "Party at Kevin's!"
end
=end

# Otra forma de ejecutar el operador lógico de || o de or

=begin
if 10 < 2 or 5 < 6
  puts "Party at Kevin's!"
end
=end

# operador ! u operador not

=begin
if !false
  puts true
end
=end

# Otra forma de hacer el operador || u operador not

=begin
if not(false)
  puts true
end
=end

# Case Statements o declaraciones Case

=begin
grade = 'F'

did_i_pass = case grade
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "McDonald's is hiring!"
end

puts did_i_pass
=end

# para hacer declaraciones más complejas quitamos la palabra clave then y hacemos lo siguiente

=begin
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "McDonald's is hiring!"
  fml = true
end
=end

# La Unless Statements o la declaración unless se ejecuta lo que está dentro de ella si la condición que posee es falsa, nada más que eso

=begin
age = 18

unless age < 17
  puts "Get a job."
end
=end

# con unless también puedo usar la palabra clave else de la misma forma en la que la usamos en if

=begin
age = 18

puts "Welcome to a life of debt." unless age < 17
=end

=begin
age = 18

unless age < 17
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end
=end

# Operador ternario
# El operador ternario es una if...elsedeclaración de una línea

# Sintáxis del operador ternario
=begin
conditional statement ? <execute if true> : <execute if false>
=end

=begin
age = 18

response = age < 17 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response
=end

# Si por ejemplo queremos escribir el operador ternario anterior como una declaración if normal haríamos lo siguiente

=begin
age = 18
if age < 17
  response = "You still have your entire life ahead of you."
else
  response = "You're all grown up."
end

puts response
=end

# es recomendable que cuando codifiquemos no usemos tantos operadores ternarios, ya que puede que nos confunda un poco al momento de codificar

# Explicación de launch School de Flow control o conditionals

=begin
puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end
=end

# Los siguientes ejemplos son todos condicionales de Ruby válidos

=begin
# declaración de la variable x para los ejemplos
puts "Put in x number"
x = gets.chomp.to_i # Se le pone .to_i, ya que gets transforma los datos aportados por el usuario a strings
=end

# Example 1
=begin
if x == 3
  puts "x is 3"
end
=end

# Example 2
=begin
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end
=end

# Example 3
=begin
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end
=end

# Example 4: must use "then" keyword when using 1-line syntax
=begin
if x == 3 then puts "x is 3" end
=end
=begin
puts "Put in x number"
x = gets.chomp.to_i
# Ruby, también permite poner la condicional if al final de esta forma

# if de una línea
puts "x is 3" if x == 3
=end

#unless de una línea

=begin
a = 5

case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
=end

=begin
a = nil
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
=end

# Orden de presedencia en Ruby

=begin
<=, <, >, >=- Comparación
==, !=- Igualdad
&& - Y lógico
|| - OR lógico
=end
