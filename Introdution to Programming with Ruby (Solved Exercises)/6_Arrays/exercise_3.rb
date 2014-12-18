arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0]
puts arr.last.first
puts arr.flatten.select {|string| string == "example"}