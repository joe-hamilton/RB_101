# Alphabet symmetry

=begin
(Understand the Problem)
  Problem:
    Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word

  Inputs: Array of words
  Outputs: Array (# of letters that occupy their positions in the alphabet)
  Questions:
    1.
  Explicit Rules:
    1. Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2.
       In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.
    2. Input will consist of alphabet characters, both uppercase and lowercase. No spaces.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes an Array of words as an argument
    - Determine how many letters in the current word that are in the same position as their position in the alphabet
    - Return an Array containing the # of letters that are in their correct places in each word

(Examples/Test Cases)
  solve(["abode","ABc","xyzD"]) = [4, 3, 1]

(Data Structure)
    Array

(Algorithm)
    - Define method `alpha_position`
        - Initialize local variable `hsh` to an empty Array
        - Create an Array from a-z, iterate through the Array, and assign each current letter as a key in `hsh` and the (index position + 1) as the value
    - Define method `solve` with one parameter `arr_of_words`
      - Initialize local variable `arr` to an empty Array
      - Initialize local variable `count` to 0
      - Iterate through each individual letter in each word and if the current letter equals the the corresponding value in `alpha_position`, then count + 1
      - Append `count` to `arr`
      - Return `arr`
(Code)
=end


def alpha_position
  hsh = {}
  ('a'..'z').to_a.each_with_index { |letter, index| hsh[letter] = index }
  hsh
end

def solve(arr_of_words)
  arr = []
  new_arr = arr_of_words.map { |word| word.downcase}

  new_arr.each do |word|
    count = 0
    word.each_char do |letter|
      count += 1 if word.index(letter) == alpha_position[letter]
    end
    arr << count
  end
  arr
end

p solve(["abode","ABc","xyzD"])
p solve(["aghke", "hgb", "ahfjrulhijavnbip"])