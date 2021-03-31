=begin
def double_words_in_phrase(string)
  string_array = string.split(' ')

  p string_array

  string_array.map { |word| word * 2 }
  p string_array
  string_array.join(' ')
end

double_words_in_phrase("This is a test")
=end

=begin
puts "Using puts:"
puts []
p "Using p:"
p []
=end

# Algunos errores comunes que podemos encontrar son los siguientes:
=begin
StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError
=end

=begin
def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)
=end

def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)
