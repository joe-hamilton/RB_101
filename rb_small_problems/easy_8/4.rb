# All Substrings

def leading_substrings(str)
  substr_arr = []
  
  (0...str.size).each do |index|
    substr_arr << str[0..index]
  end
  substr_arr
end

def substrings(str)
  starting_index = 0
  new_arr = []

  until starting_index >= str.size
    new_str = str.slice(starting_index, str.size)
    new_arr << leading_substrings(new_str)
    starting_index += 1
  end
  new_arr.flatten
end

# Alternate Solution
# def substrings(str)
#   new_arr = []

#   (0...str.size).each do |starting_index|
#     new_str = str[starting_index..-1]
#     new_arr.concat(leading_substrings(new_str))
#   end
#   new_arr
# end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]