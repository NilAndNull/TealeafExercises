
puts 'Write a positive number.'
number = gets.chomp.to_i


if number < 0
  puts number.to_s + ' is negative number!'
elsif number <= 50
  puts 'The number is between 0 and 50'
elsif number <= 100
  puts 'The number is between 51 and 100'
else
  puts 'The number is above 100'
end


