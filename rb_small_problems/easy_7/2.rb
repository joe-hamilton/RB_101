#Lettercase Counter

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a string, and then returns a hash that contains 3 entries:
      - one represents the number of characters in the string that are lowercase letters
      - one the number of characters that are uppercase letters
      - one the number of characters that are neither

  Inputs: String
  Outputs: Hash
  Questions:
    1.
  Explicit Rules:
    1.
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes a String as an argument
    - The method should return a Hash that contains 3 keys:
      - One for the number of characters that are lowercase
      - One for the number of characters that are uppercase
      - One for the number of characters that are neither

(Examples/Test Cases)
  letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
  letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
  letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
  letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

(Data Structure)
    Hash

(Algorithm)
    - Define method `letter_case_count` with one parameter `str`
      - Initialize local variable `case_hash` with keys `lowercase`, `uppercase` and `neither`. All values should be set at 0
      - Iterate through each character in input String and update the value of the correct key in `case_hash`

(Code)
=end

def letter_case_count(str)
  case_hash = {lowercase: 0, uppercase: 0, neither: 0}

  str.each_char do |char|
    if ('a'..'z').to_a.include?(char)
      case_hash[:lowercase] += 1
    elsif ('A'..'Z').to_a.include?(char)
      case_hash[:uppercase] += 1
    else
      case_hash[:neither] += 1
    end
  end
  case_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }