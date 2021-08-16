# Palindromic Substrings

=begin
Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards as it does backwards.
The return value should be arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.
=end

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

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  palindromic_array = []

  all_substrings.each do |sub_string|
    palindromic_array << sub_string if palindrome?(sub_string)
  end
  palindromic_array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]