#Find the missing letter

=begin
problem:
Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

input: array of letters
output: string (letter that is missing in array)

explicit rules:
1. You will always get an valid array.
2. And it will be always exactly one letter be missing.
3. The length of the array will always be at least 2.
4. The array will always contain letters in only one case.

Example:
['a','b','c','d','f'] -> 'e' 
['O','Q','R','S'] -> 'P'

["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"

data structure: array --> array --> string
algo:
1. define method `find_missing_letter` with parameter `arr`
  - assign an array containing the range of letters, from the first element to the last element to local variable `alphabets`
  - subtract `arr` from `alphabets` and return the difference

=end

def find_missing_letter(arr)
  alphabets = (arr[0]..arr[-1]).to_a # ["a", "b", "c", "d", "e", "f"]
  
  (alphabets - arr)[0] # "e"
end


p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"