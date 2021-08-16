# Combining Arrays

def merge(array1, array2)
  (array1 + array2).uniq
end

# Alternate solution
# def merge(array1, array2)
#   array1 | array2
# end

p merge([1, 3, 5], [3, 6, 9])