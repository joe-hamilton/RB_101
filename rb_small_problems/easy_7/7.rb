# Multiplicative Average

def show_multiplicative_average(array_of_integers)
  quotient = (array_of_integers.reduce(:*)).to_f / (array_of_integers.length)
  format("%.3f", quotient)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667