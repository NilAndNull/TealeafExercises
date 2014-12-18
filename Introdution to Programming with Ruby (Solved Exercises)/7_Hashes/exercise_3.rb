

hash = {one: 1, two: 2, three: 3}

puts 'Keys'
hash.each do |key, value|
  puts key
end

puts 'Values'
hash.each do |key, value|
  puts value
end

puts 'Keys & Values'
hash.each do |key, value|
  puts key.to_s + ' ' + value.to_s
end
