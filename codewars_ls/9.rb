# Typoglycemia Generator

=begin
problem:
return a string where:
  1. the first and last characters remain in original place for each word
  2. characters between the first and last characters must be sorted alphabetically
  3. punctuation should remain at the same place as it started, 
     for example: shan't -> sahn't

input: string
output: string

explicit rules:
1. words are seperated by single spaces
2. only spaces separate words, special characters do not, 
   for example: tik-tak -> tai-ktk
3. special characters do not take the position of the non special characters, 
   for example: -dcba -> -dbca
4. for this kata puctuation is limited to 4 characters: 
   hyphen(-), apostrophe('), comma(,) and period(.) 
5. ignore capitalisation

implicit rules:
1. must handle single character words
2. must handle empty strings
3. must handle 2 character words
4. must handle 3 character words

examples:
p scramble_words('professionals')
p scramble_words('i')
p scramble_words('')
p scramble_words('me')
p scramble_words('you')

data structure: string
algo:
    - define method `scramble_words` with parameter `str`
      - return `str` if the size of `str` is 0,1,2 or 3
      - assign empty string to local variable `letters`
      - iterate through str and append all letters to `letters`

=end

def scramble_word(str)
  return str if [0, 1, 2, 3].include?(str.size)
  letters = ""
  new_arr = []
  idx = 0
  
  str.each_char { |char| letters << char if char =~ /[a-z]/ }
  
  sorted_middle_chars = letters[1..-2].chars.sort
  new_str = letters[0] + sorted_middle_chars.join + letters[-1]
  
  str.chars.each do |char|
    if char =~ /[^a-z]/
      new_arr << char
    else
      new_arr << new_str[idx]
      idx += 1
    end
  end
  new_arr.join
end

def scramble_words(str)
  words = str.split(" ")

  words.map { |word| scramble_word(word)}.join(' ')
end 

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."