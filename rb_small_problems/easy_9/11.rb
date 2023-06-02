=begin
(Understand the Problem)
  Problem: 
  Write a program that prints out groups of words that are anagrams

  Inputs:  
  Array

  Outputs:  
  Array (grouped into words that are anagrams)
  Questions:
    1. What is an anagram?
    2. 

  Explicit Rules:
    1. Anagrams are words that have the same exact letters in them but 
       in a different order 
    2. 

  Implicit Rules:
    1. 
    2. 

  Mental Model:
    - Create a method that takes an Array of words and returns an Array containing
      all words in input Array that are anagrams of one another
    - 

(Examples/Test Cases)
  ["demo", "dome", "mode"]
  ["neon", "none"]
  #(etc)  

(Data Structure)
    - Array

(Algorithm)
    - Create a Hash that contains each word in Array argument as keys. Save in 
      `sorted_hsh`
    - Iterate through `words` and if the current element is equal to 
    - Save all keys of `sorted_hsh` in `'keys` variable 
    - Iterate through each element in `keys`
        - Iterate through `words` and if the current word is equal to the current `key`
          add the current word to `sorted_hsh[key]`
    - Save the values of `sorted_hsh` in local variable `values`
    - Iterate through `values` and output each value

(Code)
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
'flow', 'neon']


def anagram_arr(word_arr)
  sorted_hsh = word_arr.each_with_object({}) do |word, hsh| 
    word = word.chars.sort.join
    hsh[word] = [] 
  end
  keys = sorted_hsh.keys
  
  keys.each do |key|
    word_arr.each do |word|
      new_word = word.chars.sort.join
      sorted_hsh[key] << word if new_word == key
    end
  end
  values = sorted_hsh.values

  values.each { |sub_arr| p sub_arr}
end

anagram_arr(words)

