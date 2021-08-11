def word_sizes(string)
  word_size_occurrence = {}
  word_length = []

  string.split(' ').each do |word|
    new_word = word.delete('^A-Za-z')

    word_length << new_word.size
    word_size_occurrence[new_word.size] = word_length.count(new_word.size)
  end
  word_size_occurrence
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}