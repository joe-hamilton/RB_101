=begin
problem:
Complete the solution so that it returns the number of times the search_text is 
found within the full_text.
=end

def solution(full_txt, search_txt)
  full_txt.scan(search_txt).count
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1