# Reversed Arrays Part I

=begin
(Understand the Problem)
  Problem:
    Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method

  Inputs: Array
  Outputs: Array (same Array object as input, but reversed)
  Questions:
    1.
  Explicit Rules:
    1. The return value should be the same Array object
    2. You may not use Array#reverse or Array#reverse!
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes an Array object as an argument, and returns the original object, but with its elements reversed.
    -

(Examples/Test Cases)
  list = [1,2,3,4]
  result = reverse!(list)
  result == [4, 3, 2, 1] # true
  list == [4, 3, 2, 1] # true
  list.object_id == result.object_id # true

  list = %w(a b e d c)
  reverse!(list) == ["c", "d", "e", "b", "a"] # true
  list == ["c", "d", "e", "b", "a"] # true

(Data Structure)
    Array (original object, but with elements reversed)

(Algorithm)
    - Define method `reverse!` with one parameter `arr`
      - Initialize local variables `first` and `second` and assign them to 0 and -1 respectively
      - While `first` is less than the size of `arr` divided by 2, the first and second element in the Array equals the second and first elements
      - Increase `first` by 1, and decrease `second` by 1
      - Return `arr`

(Code)
=end

def reverse!(arr)
  first = 0
  second = -1

  while first < (arr.size / 2)
    arr[first], arr[second] = arr[second], arr[first]
    first += 1
    second -= 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
p reverse!(list) == [] # true
list == [] # true