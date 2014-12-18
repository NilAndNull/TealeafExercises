

def up_string(string)
  if string.length > 10
    return string.upcase
  else
    return string
  end
end

puts up_string('a' * 10)
puts up_string('b' * 11)


