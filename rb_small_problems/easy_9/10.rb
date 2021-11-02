# Grocery List

=begin
(Understand the Problem)
  Problem:
    Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

  Inputs: Array (containing sub arrays of fruits with quantities)
  Outputs: Array (containing the correct number of each fruit)
  Questions:
    1.
  Explicit Rules:
    1.
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes an Array of sub-arrays containing a fruit and the quantity in each sub-array
    - The output should be an Array that contains the correct number of each fruit

(Examples/Test Cases)
  buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) = ["apples", "apples", "apples", "orange", "bananas","bananas"]

(Data Structure)
  Array

(Algorithm)
    - Define method 'buy_fruit' with one parameter 'fruit_quantity'
      - Initialize local variable 'fruit' and assign it to an empty Array
      - Iterate through each sub-array in the argument
        - Initialize local variable 'count' and assign it to the second element in each sub_array on each iteration
          - Create a loop that adds the first element in the sub_array to 'fruit' until 'count' is equal to or less than 0
          - Reassign 'count' to itself minus 1 on each loop
      - Return 'fruit'

(Code)
=end

def buy_fruit(fruit_quantity)
  fruit = []

  fruit_quantity.each do |sub_array|
    count = sub_array[1]

    until count <= 0
      fruit << sub_array[0]
      count -= 1
    end
  end
  fruit
end

# Alternate Solution

# def buy_fruit(grocery_list)
#   new_arr = []
#   grocery_list.each do |fruit, count|
#     count.times { new_arr << fruit}
#   end
#   new_arr
# end

# Alternate Solution
# def buy_fruit(item)
#   item.map { |fruit, count| [fruit] * count}.flatten
# end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]