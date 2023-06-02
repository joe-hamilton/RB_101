# Who Likes It

=begin
problem:
Implement the function which takes an array containing the names of people that like an item. 
It must return the display text as shown in the examples:

input: array of names
output: string

explicit rules:
1. For 4 or more names, the number in "and 2 others" simply increases

implicit rules:
1. if the array is empty, return `no one likes this`

examples:
[]                                -->  "no one likes this"
["Peter"]                         -->  "Peter likes this"
["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"

data structure: array --> string
algo:
1. define method `likes` with parameter `names`
  - 

=end

def likes(names)
  if names.size == 0
    "no one likes this"
  elsif names.size == 1
    "#{names[0]} likes this"
  elsif names.size == 2
    "#{names[0]} and #{names[1]} like this"
  elsif names.size == 3
    "#{names[0]}, #{names[1]} and #{names[-1]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names[2..-1].size} others like this"
  end
end

p likes([]) == 'no one likes this'
p likes(['Peter']) == 'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'