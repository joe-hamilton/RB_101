# Take a Ten Minutes Walk

def is_valid_walk(arr)
  arr.size == 10 ? arr.count("n") == arr.count("s") && arr.count("e") == arr.count("w") : false
end


p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false