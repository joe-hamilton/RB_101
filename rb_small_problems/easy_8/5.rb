# Palindromic Substrings

=begin
Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards as it does backwards.
The return value should be arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.
=end

def leading_substrings(str)
  substr_arr = []
  
  (0...str.size).each do |index|
    substr_arr << str[0..index]
  end
  substr_arr
end

def substrings(str)
  new_arr = []

  (0...str.size).each do |starting_index|
    new_str = str[starting_index..-1]
    new_arr.concat(leading_substrings(new_str))
  end
  new_arr
end

def palindrome?(str)
  str == str.reverse && str.size > 1
end

def palindromes(str)
  new_arr = substrings(str)
  palindrome_arr = new_arr.select { |sub_str| palindrome?(sub_str)}
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