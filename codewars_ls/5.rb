# Longest Vowel Chain

=begin
problem:
Given a lowercase string that has alphabetic characters only 
(both vowels and consonants) and no spaces, return the length of 
the longest vowel substring. Vowels are any of aeiou.
=end

def find_substrings(str)
  substrings = []

  (0...str.size).each do |start|
    (start...str.size).each do |end_idx|
      substrings << str[start..end_idx] if str[start..end_idx].chars.all? { |l| l =~ /[aeiou]/}
    end
  end
  substrings
end

def solve(str)
  substrings = find_substrings(str) #["o", "e", "a", "i", "io", "o"]

  substrings.max_by(&:size).size
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
