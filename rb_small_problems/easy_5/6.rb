=begin
(Understand the Problem)
  Problem:
    Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

  Inputs: String
  Outputs: Hash (word size => # of occurrences )
  Questions:
    1.
  Explicit Rules:
    1. Words consist of any string of characters that do not include a space.
    2.
  Implicit Rules:
    1. An empty input String should return an empty Hash
    2. "Hello." should be counted as one word.
  Mental Model:
    - Write a method that takes a String with one or more word separated by spaces and returns a Hash
    - The Hash will include word size as the key, and the # of occurrences of that word as the value.

(Examples/Test Cases)
  word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
  word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
  word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
  word_sizes('') == {}

(Data Structure)
    Hash ({ 3 => 5, 6 => 1, 7 => 2 })

(Algorithm)
    - Write method 'word_sizes' that takes one String argument
      - Inititalize local variable 'word_size_occurrence' and assign it to empty Hash
      - Within method, split String into individual elements separated by spaces and assign it to 'string_array'
      - Iterate through 'string_array' while making the key as the word size and the value as the # of times that size appears

(Code)
=end

def word_sizes(string)
  word_size_occurrence = {}
  word_length = []

  string.split(' ').each do |word|
    word_length << word.size
    word_size_occurrence[word.size] = word_length.count(word.size)
  end
  word_size_occurrence
end



p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}