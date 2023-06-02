=begin
(Understand the Problem)
  Problem:
    Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

  Inputs: Array of integers
  Outputs: Array of integers
  Questions:
    1.
  Explicit Rules:
    1. Sort input Array of integers based on the English words for each number (Ex: 8(eight) is first, 0(zero) is last)
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes an Array of integers between 0-19, and returns a sorted Array of those numbers based on the English word for each number
    -

(Examples/Test Cases)
  alphabetic_number_sort((0..19).to_a) == [
    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
    6, 16, 10, 13, 3, 12, 2, 0
  ]

(Data Structure)
    Array of integers

(Algorithm)
    - Inside method, initialize 'alphabetic_words' and assign it to
      [zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen]
    -
    -

(Code)
=end

def alphabetic_number_sort(num_array)
  num_alpha_hash = {}
  index = 0
  alphabetic_words = [
    "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven",
    "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"
  ]


  num_array.each do |number|
    num_alpha_hash[alphabetic_words[index]] = number
    index += 1
  end

  new_array = alphabetic_words.sort.map do |word|
    num_alpha_hash[word]
  end
  new_array
end

# Alternate Solution

# def alphabetic_number_sort(numbers)
#   numbers.sort { |a, b| NUMERIC_WORDS[a] <=> NUMERIC_WORDS[b]}
# end

# Alternate Solution
# def alphabetic_number_sort(num_array)
#   num_words = [
#     "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven",
#     "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"
#   ]

#   num_array.sort_by { |num| num_words[num] }
# end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]