

answer = nil

while answer != 'STOP' do
  puts 'Write some word. When you wish to stop, write STOP'
  answer = gets.chomp
  puts "The answer was: #{answer}"
end

