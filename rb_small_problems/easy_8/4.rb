# All Substrings

def leading_substrings(string)
  substrings = []
  letters = string.chars

  1.upto(string.size) do |sliced_length|
    substrings << letters.slice(0, sliced_length)
  end

  substrings.map do |sub_array|
    sub_array.join
  end
end

def substrings(string)
  all_substrings = []
  starting_index = 0
  loop do
    all_substrings << leading_substrings(string[starting_index..-1])
    starting_index += 1
    break if starting_index == string.size
  end
  all_substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]