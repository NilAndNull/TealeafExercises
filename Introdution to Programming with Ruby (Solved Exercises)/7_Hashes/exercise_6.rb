

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


anagrams = {}


for word in words do

  sorted_word = word.split('').sort.join

  if anagrams.has_key? (sorted_word)
    anagrams[sorted_word] << word
  else
    anagrams[sorted_word] = Array(word)
  end

end

p anagrams




