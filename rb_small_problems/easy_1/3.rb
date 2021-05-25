# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Solution 1
# def digit_list(num)
#   num.digits.reverse
# end

# Solution 2
def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

# Examples
p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true