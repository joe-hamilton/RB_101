# Non-Even Substrings

=begin
problem:
Given a string of integers, return the number of odd-numbered substrings 
that can be formed.
=end

def find_substrings(str)
  sub_str = []
 
  (0...str.size).each do |s_index|
    (s_index...str.size).each do |e_index|
        sub_str << str[s_index..e_index]
    end
  end
  sub_str
end

def solve(str)
  num_arr = find_substrings(str).map(&:to_i) #[1, 13, 134, 1341, 3, 34, 341, 4, 41, 1]
  
  num_arr.select { |n| n.odd?} #[1, 13, 1341, 3, 341, 41, 1]
         .size
end


p solve("1341") #== 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28