puts 'Write three decimal numbers separated by a space:'

array_of_floats = gets.chomp.split.map { |number| number.to_f } 

array_of_floats.map! { |number| number * number }

puts 'Result: '
puts array_of_floats


