# Double Char (Part 2)

# Write a method that takes a string, and returns a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)


def double_consonants(string)
  result_string = ''

  string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      result_string << char * 2
    else
      result_string << char
    end
  end
  result_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""