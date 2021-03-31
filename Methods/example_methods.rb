=begin
p "anything".reverse
=end

# Estows dos códigos hacen lo mismo porque puts es un método y en ruby los Métodos pueden ir entre parentesis o sin ellos
=begin
puts "anything"

puts("anything")
=end

# Con la palabra def realizo la declaración de nuevos métodos

=begin
def my_name
  "Joe Smith"
end

puts my_name
=end

# Nombres de métodos válidos y no válidos en Ruby
=begin
method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid
=end

=begin
def greet(name)
  "Hello, " + name + "!"
end

puts greet("John")
=end

# Aquí name es un parámetro y John es un argumento

# los parámetros actúan como variables de marcador de posición en la plantilla de su método, mientras que los argumentos son las variables reales que se pasan al método cuando se llama.

# Ejemplo de parámetros predeterminaods o Default Parameters

=begin
def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!
=end

=begin
def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"
=end

# la palabra clave return es un retorno explícito o un explicit return y le dice a nuestro método lo que va a retornar

=begin
def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"
=end

# en Ruby, existen retornos implícitos y pocos lenguajes los permiten

=begin
def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.
=end

=begin
def my_name
  return "Joe Smith"
  "Jane Doe"
end

puts my_name #=> "Joe Smith"
=end

=begin
def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.
=end

# Si quito la palabra clave return de mi método no voy a obtener lo que esperaba
=begin
def even_odd(number)
  unless number.is_a? Numeric
    "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.
=end

# Este método retorna nil
=begin
def puts_squared(number)
  puts number * number
end

puts_squared(8)
=end

#En cambio este método retorna un número
=begin
def return_squared(number)
  number * number
end

return_squared(6)
=end

=begin
def return_squared(number)
  number * number
end

# return_squared(6)
x = return_squared(20) #=> 400
y = 100
sum = x + y #=> 500

puts "The sum of #{x} and #{y} is #{sum}."
#=> The sum of 400 and 100 is 500.
=end

# encadenar métodos o Chaining Methods
=begin
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"
=end

# Este método anterior tiene como resultado lo siguiente por pasos

# ["be", "to", "not", "or", "be", "to"].reverse
# = ["to", "be", "or", "not", "to", "be"].join(" ")
# = "to be or not to be".capitalize
# = "To be or not to be"

# Los Métodos de Predicado o Predicate Methods son aquellos métodos que terminan en "?" y retornan true or false osea un valor booleano

=begin
puts 5.even? #=> false
puts 6.even? #=> true
puts 17.odd? #=> true

puts 12.between?(10, 15) #=> true
=end

# yo puedo crear mis PROPIOS MÉTODOS con un "?" para indicar que el método devuelve un valor booleano

=begin
whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"
=end

# Si deseamos sobrescribir los métodos o las variables debemos usar el método bang !, OJO Este método no es recomendable OJO

# La mejor forma de hacerlo, es crear una nueva variable con la información que deseamos almacenar

# Escribir whisper.downcase!es el equivalente a escribir whisper = whisper.downcase.

# parámetros predeterminados

=begin
def say(words = 'hello')
  puts words + "."
end

say()
say("hi")
say("how are you")
say("I'm fine")
=end

=begin
a = 5

def some_method
  a = 3
end

puts a
=end

=begin
[1, 2, 3].each do |num|
  puts num
end
=end

=begin
def print_num(num)
  puts num
end

print_num(4)
=end

=begin
def some_method(number)
  number = 7
end

a = 5
some_method(a)
puts a
=end

=begin
a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
=end

=begin
a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"
=end

=begin
a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"
=end

=begin
def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value
=end

=begin
def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value
=end

=begin
def add_three(number)
  number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
=end

=begin
def just_assignment(number)
  foo = number + 3
end

just_assignment(2)
=end

=begin
def add_three(n)
  n + 3
end

# add_three(5)
add_three(5).times { puts 'this should print 8 times' }
=end

=begin
"hi there".length.to_s
=end

# Este método no funcionará porque estamos usando puts

# no funciona con puts pero si funciona con p o sin colocar ninguno de los dos, esto se debe a los valores de retorno que generamos

# no funciona por el puts
=begin
def add_three(n)
  puts n + 3
end

add_three(5).times { puts "will this work?" }
=end

# si funciona con el p
=begin
def add_three(n)
  puts n + 3
end

add_three(5).times { puts "will this work?" }
=end

# funciona aunque no le coloquemos nada
=begin
def add_three(n)
  puts n + 3
end

add_three(5).times { puts "will this work?" }
=end

# Esta sería una de las formas de en las que podemos usar puts sin que nos de un error de retorno
=begin
def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end

add_three(5).times { puts "will this work?" }
=end

=begin
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

add(20, 45)

subtract(80, 10)
=end

=begin
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(num1, num2)
  num1 * num2
end

multiply(add(20, 45), subtract(80, 10))
=end

=begin
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(num1, num2)
  num1 * num2
end

add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
=end

# esta es la famosa pila de llamada o pila o stack o call Stack
=begin
def first
  puts "first method"
end

def second
  first
  puts "second method"
end

second
puts "main method"
=end

# el print y el puts retornan o return nil

# alcances de las variables

# este ejemplo va a dar error por el alcance de las variables
=begin
def add_two(number)
  number + 2
end

puts add_two(3)
puts number
=end

=begin
def add_one(number)
  number + 1
end

def add_two(number)
  number = add_one(number)
  add_one(number)
end

puts add_two(3)
=end

=begin
def sum(number, other)
  number + other
end

def add_one(number)
  sum(number, 1)
end

def add_two(number)
  sum(number, 2)
end

puts add_one(3)
puts add_two(3)
=end

#El uso del .inspect
=begin
puts 5.inspect

puts "A string".inspect

puts [1, 2, 3].inspect
=end

=begin
def p(object)
  puts object.inspect
end

p("Hola")
=end
