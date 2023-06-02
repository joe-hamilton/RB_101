=begin
(Problem):
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed.
Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.


(Understand the Problem):
  •	(Inputs): String containing one or more words

  •	(Outputs): String with words containing 5 or more characters reversed

  •	(Rules):
    o	(Explicit):
        - Each string will consist of only letters and spaces
        - Spaces should be included only when more than one word is present


    o	(Implicit):

  •	(Questions):

  •	(Mental Model):
      - Given a string, determine which words contain 5 or more characters, then return string with words containing 5 or more characters reversed

(Examples / Test Cases):

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


(Data Structure): String (words with 5 or more characters should be reversed)

(Algorithm):
  - store empty array in `new_array` variable
  - turn string into array
  - iterate through array
    - create if/else statement
      - if the element size >= 5, reverse the word and append to `new_array` array
      - else append word to `new_array` array
  - return `new_array` array and join delimited by spaces
=end

# (Code)

# def reverse_words(string)
#   new_array = []

#   string.split.each do |element|
#     if element.size >= 5
#       new_array << element.reverse
#     else
#       new_array << element
#     end
#   end
#   new_array.join(' ')
# end

def reverse_words(string)
  string.split.map do |ele|
    ele = ele.reverse if ele.size >= 5
    ele
  end
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS