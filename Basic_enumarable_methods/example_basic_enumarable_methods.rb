=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

p invited_list
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
p friends.select { |friend| friend != 'Brian' }
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
p friends.reject { |friend| friend == 'Brian' }
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
p friends.each { |friend| puts "Hello, " + friend }
=end

=begin
my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end
=end

=begin
my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }
=end

=begin
my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |pair| puts "the pair is #{pair}" }
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| friend.upcase }

#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
=end

=begin
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []

friends.each { |friend| shouting_at_friends.push(friend.upcase) }


p shouting_at_friends
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map { |friend| friend.upcase }
=end

=begin
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

p my_order.map { |item| item.gsub('medium', 'extra large') }
=end

=begin
salaries = [1200, 1500, 1100, 1800]

p salaries.map { |salary| salary - 700 }
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

friends.each do |friend|
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

p invited_list
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

p friends.select { |friend| friend != 'Brian' }
=end

=begin
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
p responses.select { |person, response| response == 'yes' }
=end

=begin
my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

p sum
=end

=begin
my_numbers = [5, 6, 7, 8]

p my_numbers.reduce { |sum, number| sum + number }
=end

=begin
my_numbers = [5, 6, 7, 8]
p my_numbers.reduce(1000) { |sum, number| sum + number }
=end

=begin
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }

friends
=end

# Aquí haremos uso del método bang para cambiar el contenido de los arrays de forma permanente

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }

friends
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends = friends.select { |friend| friend != 'Brian' }

friends

invited_friends
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

friends

invited_friends(friends)
=end

=begin
[1,2,3].each { |num| print "#{num}! " }
=end

=begin
["Cool", "chicken!", "beans!", "beef!"].each_with_index do |item, index|
  print "#{item} " if index%2==0
end
=end

=begin
class Array
  def keep_evens
    result_array = []
    for num in self
      result_array << num if num % 2 == 0
    end
    return result_array
  end
end

my_array = [1,2,3,4,5,6,7,8,100]
p my_array.keep_evens
=end

=begin
my_array = [1,2,3,4,5,6,7,8,100]

p my_array.select{ |item| item%2==0 }
=end

=begin
my_hash = {"Joe" => "male", "Jim" => "male", "Patty" => "female"}

p my_hash.select{ |name, gender| gender == "male" }
=end

=begin
names = ["James", "Bob", "Joe", "Mark", "Jim"]

p names.group_by{ |name| name.length }
=end

=begin
names = ["James", "Bob", "Joe", "Mark", "Jim"]

p names.grep(/J/)
=end

=begin
array = ["a", "b", "c"]

array.map { |string| string.upcase }
=end

=begin
hash = { bacon: "protein", apple: "fruit" }

p hash.map { |k,v| [k, v.to_sym] }.to_h
=end

=begin
array = %w(a b c)

p array.map.with_index { |ch, idx| [ch, idx] }
=end

# Shorthand (map &)
=begin
p ["11", "21", "5"].map(&:to_i)
=end

=begin
p ["orange", "apple", "banana"].map(&:class)
=end
