# Matching Parentheses

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise

  Inputs: String
  Outputs: Boolean
  Questions:
    1.
  Explicit Rules:
    1. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
    2. Balanced pairs must each start with a (, not a )
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes a String as an argument and returns a boolean based on whether the parentheses
      in the String are balanced or not
    -

(Examples/Test Cases)
  balanced?('What (is) this?') == true
  balanced?('What is) this?') == false
  balanced?('What (is this?') == false
  balanced?('((What) (is this))?') == true
  balanced?('((What)) (is this))?') == false
  balanced?('Hey!') == true
  balanced?(')Hey!(') == false
  balanced?('What ((is))) up(') == false

(Data Structure)
    Boolean

(Algorithm)
    - Define method `balanced?` with one parameter `str`
      - Inititialize local variable `parenth_count` to keep track of number of parentheses in `str`
      - Iterate through each character in `str` and add 1 to `parenth_count` for every left parentheses, subtract 1 for every right parentheses
      - If `parenth_count` equals 0 then return true, false otherwise

(Code)
=end

def balanced?(str)
  parenth_count = 0

  str.each_char do |char|
    if char == '('
      parenth_count += 1
    elsif char == ')'
      parenth_count -= 1
    end
    break if parenth_count < 0
  end
  return true if parenth_count == 0
  false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false