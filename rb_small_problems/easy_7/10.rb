# The End Is Near But Not Here

def penultimate(string)
  split_string = string.split
  last_word = split_string.last
  next_to_last_index = split_string.index(last_word) - 1

  split_string[next_to_last_index]
end

# Alternate Solution
# def penultimate(string)
#   split_string = string.split

#   split_string[-2]
# end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'