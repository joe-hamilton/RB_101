=begin
problem:
Find the longest substring in alphabetical order

input: string
output: string (longest substring in alphabetical order)

explicit rules:
1. one string will be passed into method as an argument
2. The input will only consist of lowercase characters and will be at 
   least one letter long.
3. if there are multiple solutions, return the one that appears first

examples: 
p longest('asd')#, 'as')
p longest('nab')#, 'ab')
p longest('abcdeapbcdef')#, 'abcde')
p longest('asdfaaaabbbbcttavvfffffdf')#, 'aaaabbbbctt')
p longest('asdfbyfgiklag')#, 'fgikl')
p longest('z')#, 'z')
p longest('zyba')#, 'z')

data structure: string
algo:
-define method `find_substrings` with parameter `str`
  (-find all substrings for `str` and assign to local variable `substrings`)

- define method `alphabetical_order` with parameter `sub`
  (- determine if current substring is in alphabetical order)

- define method `longest` with parameter `str`
  (- find all substrings for `str` and assign to local variable `substrings`)
  - iterate through each substring in `substrings` and select all substrings that
    are in alphabetical order
    (- determine if current substring is in alphabetical order)

=end

def find_substrings(str)
  sub_str = []
 
  (0...str.size).each do |s_index|
    (s_index...str.size).each do |e_index|
        sub_str << str[s_index..e_index] if alphabetical_order(str[s_index..e_index])
    end
  end
  sub_str
end

def alphabetical_order(sub)
  sub.chars == sub.chars.sort
end

def longest(str)
  substrings = find_substrings(str)
  substrings.max_by(&:size)
end


p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

