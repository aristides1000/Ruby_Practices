# Ejmeplo de hash

=begin
my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
=end

=begin
my_hash = Hash.new
my_hash
=end

=begin
hash = { 9 => "nine", :six => 6 }
puts hash
=end

=begin
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

puts shoes["summer"]   #=> "sandals"

puts shoes["hiking"]   #=> nil

shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"

shoes["fall"] = "sneakers"

shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}
=end

=begin
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob", age: 62, city: "New York City")
=end
