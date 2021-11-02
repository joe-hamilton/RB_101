=begin
(Problem):
Write a method that counts the number of occurrences of each element in a given array.


(Understand the Problem):
  •	(Inputs): Array

  •	(Outputs):
      - Hash (keys: each element in input array, values: # of occurences)
      - The words in the array are case-sensitive

  •	(Rules):
    o	(Explicit): The method should count the # of occurences of each element in given array


    o	(Implicit): Each element in the array should only be counted one time (no duplicates)

  •	(Questions):

  •	(Mental Model):
    - Iterate through array and count the # of occurences of each element, making sure to ignore any duplicates

(Examples / Test Cases):

car => 4
truck => 3
SUV => 1
motorcycle => 2


(Data Structure): Hash

(Algorithm):
  - Store empty array in `occurrences` hash
  - Get rid of any duplicates in array
  - Iterate through array
    - To create hash, create the key from each element and create the value from counting # of occurrences in array

(Code)

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# Solution 1
# def count_occurrences(auto)
#   auto.uniq.each do |name|
#     puts "#{name} => #{auto.count(name)}"
#   end
# end

# Solution 2
# def count_occurrences(auto_array)
#   new_hash = auto_array.each_with_object({}) do |auto, h|
#     h[auto] = auto_array.count(auto)
#   end
#   new_hash.each { |k, v| puts "#{k} => #{v}"}
# end

# Solution 3
# def count_occurrences(auto)
#   occurrences = {}

#   auto.uniq.each do |name|
#     occurrences[name] = auto.count(name)
#   end

#   occurrences.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

# Further Exploration
def count_occurrences(auto)
  occurrences = {}
  arr = auto.map(&:downcase)

  arr.uniq.each do |name|
    occurrences[name] = arr.count(name)
  end

  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

 count_occurrences(vehicles)