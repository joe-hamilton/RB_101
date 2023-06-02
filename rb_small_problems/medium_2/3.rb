# Lettercase Percentage Ratio

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a string, and then returns a hash that contains 3 entries:
      - one represents the percentage of characters in the string that are lowercase letters
      - one the percentage of characters that are uppercase letters
      -  one the percentage of characters that are neither
  Inputs: String
  Outputs: Hash
  Questions:
    1. Do we count non-alphanumeric characters as characters when counting?
  Explicit Rules:
    1. You may assume that the string will always contain at least one character
    2.
  Implicit Rules:
    1. The values in the output Hash should be a decimal number
    2.
  Mental Model:
    - Write a method that takes a String and outputs a Hash containing 3 keys: lowercase, uppercase, neither
    - The method should count the respective characters and populate the values in the Hash depending on the characters in the input String

(Examples/Test Cases)
  letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
  letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
  letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

(Data Structure)
    Hash

(Algorithm)
    - Define method `letter_percentages` with one parameter `str`
      - Create a Hash with 3 keys: lowercase, uppercase, neither, with values of 0. Assign to `case_count`. Make sure the values are decimal numbers
      - Split `str` into individual characters and iterate through it
      - As you iterate through the individual elements, add 1 to the value of the respective key the current character applies to
    - Define method `calculate_to_percentage` with 2 parameters `hsh` and `str`
      - Iterate through `hsh` and divide the values by the size of `str` followed by multiplying that value by 100
      - Return `hsh`
    - Call the `calculate_to_percentage` method and pass in `case_count` and `str` as arguments

(Code)
=end

# Alternate Solution
=begin
UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def return_character_hsh(str)
  character_hsh = { lowercase: 0, uppercase: 0, neither: 0}

  str.each_char do |char|
    if LOWERCASE.include?(char)
      character_hsh[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      character_hsh[:uppercase] += 1
    else
      character_hsh[:neither] += 1
    end
  end
  character_hsh
end
=end

def letter_percentages(str)
  character_count = str.length
   character_hsh = return_character_hsh(str) 

   character_hsh.each do |key, value|
    character_hsh[key] = (value.to_f/character_count) * 100
   end
   character_hsh
end

def letter_percentages(str)
  case_count = { lowercase: 0, uppercase: 0, neither: 0}

  str.each_char do |char|
    case char
    when char =~ /[a-z]/ && char.downcase then case_count[:lowercase] += 1.0
    when char =~ /[A-Z]/ && char.upcase then case_count[:uppercase] += 1.0
    else case_count[:neither] += 1.0
    end
  end
  calculate_to_percentage(case_count, str)
end

def calculate_to_percentage(hsh, str)
  hsh.each do |key, value|
    hsh[key] = (value / str.size) * 100
  end
  hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }