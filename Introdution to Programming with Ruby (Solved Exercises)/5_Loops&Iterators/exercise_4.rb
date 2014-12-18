

def countdown(n)
  if n > 0
    puts n
    countdown(n-1)
  else
    puts "It's over!"
  end
end


countdown(10)
