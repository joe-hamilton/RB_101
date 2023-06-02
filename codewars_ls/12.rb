# Detect Pangram
=begin
problem: Given a string, detect whether or not it is a pangram. Return True if it is, False if not

input: string
output: true or false

explicit rules:
1. Ignore numbers and punctuation.
2. A pangram is a sentence that contains every single letter of the alphabet at least once.
3. case does not matter
4. return value should be a boolean

data structure: true or false
algo: pangram?("The quick brown fox jumps over the lazy dog.") == true
1. define method `pangram?` with parameter `str`
  - assign all alphabets to local variable
  - downcase `str` and assign to local variable 
  - iterate through the alphabet array and return true if all alphabets are included in `str`
=end


def pangram?(str)
  alphabets = ("a".."z").to_a # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  str = str.downcase # "this is not a pangram."

  alphabets.all? { |letter| str.include?(letter) }
end 

p pangram?("This is not a pangram.") == false
p pangram?("The quick brown fox jumps over the lazy dog.") == true