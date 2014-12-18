#Exercise 2
puts '-- Exercise 2 --'

print 'How old are you? '

age = gets.chomp.to_i

(1..4).each do |t|
  years_from_now = t * 10
  puts "In #{years_from_now} years you will be:"

  years_old_from_now = age + years_from_now
  puts "#{years_old_from_now}"
end
