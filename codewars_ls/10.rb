# Most Frequently Used Words in a Text

=begin
problem:
Write a function that, given a string of text (possibly with punctuation and 
line-breaks), returns an array of the top-3 most occurring words, in descending 
order of the number of occurrences.

input: string
output: array of strings (3 most occurring words in input string)

explicit rules:
1. A word is a string of letters (A to Z) optionally containing one or more 
   apostrophes (') in ASCII.
2. Apostrophes can appear at the start, middle or end of a word 
   ('abc, abc', 'abc', ab'c are all valid)
3. Any other characters (e.g. #, \, / , . ...) are not part of a word and should 
   be treated as whitespace.
4. Matches should be case-insensitive, and the words in the result should be 
   lowercased.
5. Ties may be broken arbitrarily.
6. If a text contains fewer than three unique words, then either the top-2 or 
   top-1 words should be returned, or an empty array if a text contains no words.

data structure: array
algo:
1. define method `top_3_words` with parameter `str`
  - downcase `str`, turn into array, and assign to local variable
  - iterate through array and take out all characters that aren't letters or '
  - sort elements in array by the number of occurrences
=end



def top_3_words(str)
  str_arr = str.downcase.split(" ").map { |ele| ele.delete("^a-z'")}
  sorted_arr = str_arr.group_by { |ele| str_arr.count(ele)}.sort { |a, b| b <=> a }.to_h

  sorted_arr.values
            .map(&:uniq)
            .flatten
            .keep_if { |e| e =~ /[a-z]/ }
            .slice(0, 3)
end

=begin
Alternate Solution

def top_3_words(str)
  str.downcase.scan(/[a-z']+/) #["e", "e", "e", "e", "ddd", "ddd", "ddd", "ddd", "ddd", "aa", "aa", "aa", "bb", "cc", "cc", "e", "e", "e"]
              .select { |ele| /[a-z]/ =~ ele } #["e", "e", "e", "e", "ddd", "ddd", "ddd", "ddd", "ddd", "aa", "aa", "aa", "bb", "cc", "cc", "e", "e", "e"]
              .group_by { |ele| ele }.values #[["e", "e", "e", "e", "e", "e", "e"], ["ddd", "ddd", "ddd", "ddd", "ddd"], ["aa", "aa", "aa"], ["bb"], ["cc", "cc"]]
              .sort_by { |subarr| subarr.size}.reverse #[["e", "e", "e", "e", "e", "e", "e"], ["ddd", "ddd", "ddd", "ddd", "ddd"], ["aa", "aa", "aa"], ["cc", "cc"], ["bb"]]
              .map(&:uniq) #[["e"], ["ddd"], ["aa"], ["cc"], ["bb"]]
              .flatten[0, 3]
end
=end



p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
# mind, there lived not long since one of those gentlemen that keep a lance
# in the lance-rack, an old buckler, a lean hack, and a greyhound for
# coursing. An olla of rather more beef than mutton, a salad on most
# nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
# on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]

