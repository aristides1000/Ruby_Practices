=begin
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end
=end

=begin
i = 0
while i < 10 do
  puts "i is #{i}"
  i += 1
end
=end

=begin
while gets.chomp != "yes" do
  puts "Will you go to prom with me?"
end
=end

=begin
i = 0
until i >= 10 do
  puts "i is #{i}"
  i += 1
end
=end

=begin
until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end
=end

# Ejemplo o explicación de Range
=begin
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d
=end

=begin
for i in 0..5
  puts "#{i} zombies incoming!"
end
=end

=begin
5.times do
  puts "Hello, world!"
end
=end

=begin
5.times do |number|
  puts "Alternative fact number #{number}"
end
=end

=begin
5.upto(10) {|num| print "#{num} "} # 5 6 7 8 9 10
=end

=begin
10.downto(5) {|num| print "#{num} " } # 10 9 8 7 6 5
=end

# ejemplos de la página launchschool

=begin
loop do
  puts "This will keep printing until you hit Ctrl + c"
end
=end

=begin
i = 0
loop do
  i += 1
  puts i
  break
end
=end

=begin
i = 0
loop do
  i += 2
  puts i
  if i == 10
    break
  end
end
=end

=begin
i = 0
loop do
  i += 2
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end
=end

=begin
x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"
=end

# refactorización del bucle anterior

=begin
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 # <- refactored this line
end

puts "Done!"
=end

#bucle until, se cumple siempre y cuando la condicón sea falsa, al momento de ser verdadera sale del bucle

=begin
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"
=end

=begin
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != "Y"
    break
  end
end
=end

# Este código hace lo mismo que un bucle do while
=begin
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'
=end

# Cabe acotar que si lo anterior funciona, el creador e Ruby nos insta a NO usarlo

=begin
x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts "Done!"
=end

=begin
x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

puts "Done!"
=end

x = 0

=begin
while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end
=end

# el next brinca la iteracion y continua con las siguientes ejecuciones

=begin
x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end
=end

# al llegar el break en cambio del next, nos saca de todo el bucle

=begin
x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x +=1
end
=end

=begin
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }
=end

=begin
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
=end

# OJO Debo utilizar el método each para recorrer elementos OJO

# Explicación de pilas o pilas de llamadas

# recursividad y calls stacks o llamadas de pilas

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

#recursividad

# Este método no usa recursividad
=begin
def doubler(start)
  puts start * 2
end

doubler(2)
=end

=begin
#este método si usa recursividad
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(3)
=end

=begin
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)
=end
