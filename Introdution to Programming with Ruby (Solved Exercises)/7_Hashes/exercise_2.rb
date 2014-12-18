# The difference is that the bang method changes the caller (destructive)
# and the non bang method do not change the caller

hash_1 = {one: 1, two: 2}
hash_2 = {three: 3, four: 4}

merged = hash_1.merge(hash_2)

puts '-- Without Bang Method --'
puts 'Merged: '
p merged
puts 'Hash_1: '
p hash_1
puts 'Hash_2: '
p hash_2


merged = hash_1.merge!(hash_2)

puts '-- With Bang Method --'
puts 'Merged: '
p merged
puts 'Hash_1: '
p hash_1
puts 'Hash_2: '
p hash_2
