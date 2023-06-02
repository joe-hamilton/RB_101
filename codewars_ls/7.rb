# Substring Fun

=begin
problem:
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word 
which should be returned as a string, where n is the position of the word in 
the list.
=end

def nth_char(arr)
  arr.map.with_index { |word, idx| word[idx] }.join
end



p nth_char(['yoda', 'best', 'has']) == "yes"
p nth_char([]) == ""
p nth_char(['X-ray']) == "X"
p nth_char(['No','No']) == "No"
p nth_char(['Chad','Morocco','India','Algeria','Botswana','Bahamas','Ecuador','Micronesia']) == "Codewars"
