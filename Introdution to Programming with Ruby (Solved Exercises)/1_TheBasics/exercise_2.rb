puts 'Write an integer number with four digits.'

number = gets.chomp.to_i

thounsands = number / 1000
hundreds = (number % 1000) / 100
tens = (number % 100) / 10
ones = (number % 10)

puts "For the number: '#{number}'
  - Thounsands: #{thounsands}
  - Hundreds: #{hundreds}
  - Tens: #{tens}
  - Ones: #{ones}"