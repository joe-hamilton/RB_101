# Now I Know My ABCs

BLOCKS = [ ['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'], ['n', 'a'], ['g', 't'], ['r', 'e'], ['f', 's'], ['j', 'w'], ['h', 'u'], ['v', 'i'], ['l', 'y'], ['z', 'm'] ]

def block_word?(word)
  word = word.downcase
  BLOCKS.each do |sub_arr|
    return false if (word.include?(sub_arr[0]) && word.include?(sub_arr[1]))
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true