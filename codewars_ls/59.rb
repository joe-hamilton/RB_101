# Which Are In?

=begin
problem:
Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.

input: array of strings
output: array of strings (in lexicographical order if the string in `a1` is a substring of any string in `a2`)

explicit rules:
1. there will be two arrays passed in as arguments to the method
2. return a sorted array in lexicographical order of the string of `a1` which are substrings of strings in `a2`

implicit rules:
1. all strings will be lowercased
2. if no substrings match up, return an empty array

Example 1:
a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

Example 2:
a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []

data structure: array --> array
algo:
1. define method `substring?` with parameters `sub` and `arr2`
  - see if any strings in `arr2` contain `sub`

2. define method `in_array` with parameters `arr1` and `arr2`
  - iterate through `a1`
    - select the current substring if it is present in any strings in `a2`
=end

def substring?(sub, a2)
  a2.any? { |str| str.include?(sub)} # true
end


def in_array(a1, a2 = [])
  a1.select { |sub| substring?(sub, a2)} # ["arp", "live", "strong"]
    .sort # ["arp", "live", "strong"]
end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p in_array(a1, a2) == ["arp", "live", "strong"]

a1 = ["tarp", "mice", "bull"]
p in_array(a1, a2) == []