# Does my list include this?

=begin
(Understand the Problem)
  Problem:
    Write a method named 'include?' that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not.

  Inputs: Array and a search value
  Outputs: Boolean
  Questions:
    1. What type of objects does the input Array consists of?
    2. What type of object is the search value?
    3. How do we handle empty arrays?
  Explicit Rules:
    1. You may not use the Array#include? method in your solution.
    2.
  Implicit Rules:
    1. Input Array and search value can consist of any type of object, but they have to match
    2.
  Mental Model:
    - Write a method named 'include?' that takes two arguments, an Array and a search value
    - The method should return a boolean based on whether the search value is included in the input Array

(Examples/Test Cases)
   include?([1,2,3,4,5], 3) == true
   include?([1,2,3,4,5], 6) == false
   include?([], 3) == false
   include?([nil], nil) == true
   include?([], nil) == false

(Data Structure)
    Boolean

(Algorithm)
    - Define method 'include?' with two parameters: 'array' and 'search_value'
      - Initialize local variable 'duplicate' and save it to the return value of iterating through the input Array
        and selecting the element that matches the 'search_value'
      - Take the 'duplicate' array and determine whether the first element is equal to the 'search_value'
         - if the first element in the 'duplicate' array is equal to the 'search_value', return true, false if not

(Code)
=end


def include?(array, search_value)
  array.each { |element| return true if element == search_value}
  return false
end

# Alternate solution

# def include?(array, search_value)
#    duplicate = array.select { |element| element == search_value}
#    if duplicate.empty?
#       return false
#    elsif duplicate.first == search_value
#       return true
#    else
#       return false
#    end
# end


p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) #== false