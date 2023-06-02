# Repeated Substring

=begin
problem:
For a given nonempty string s find a minimum substring t and the maximum number k, 
such that the entire string s is equal to t repeated k times
=end

def find_substrings(str)
  sub_str = []
 
  (0...str.size).each do |s_index|
    (s_index...str.size).each do |e_index|
        sub_str << str[s_index..e_index]
    end
  end
  sub_str.uniq
end


def f(str)
  substrings = find_substrings(str)

  min_sub = substrings.select { |sub| sub * (str.size / sub.size) == str}.first
  max_num = str.size / min_sub.size  
  [min_sub, max_num]
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]