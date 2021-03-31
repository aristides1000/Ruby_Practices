puts "Please type a number betwen 0 to 100"
number = gets.chomp.to_i

case
when number < 0
  puts "your number is less than 0"
when number > 0 && number < 50
  puts "Your number is betwen 0 to 50"
when number > 50 && number < 100
  puts "Your number is betwen 50 to 100"
else
  puts "your number is greater than 100"
end
