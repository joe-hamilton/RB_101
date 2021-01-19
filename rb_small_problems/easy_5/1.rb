# ASCII STRING VALUE

=begin

Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
The ASCII string value is the sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

(Understand the Problem):
  •	(Inputs): String

  •	(Outputs): Integer (ASCII string value)

  •	(Questions):

  •	(Rules):
    o	(Explicit): You may use String#ord to determine the ASCII value of a character.


    o	(Implicit): If given an empty string, pass in the value of 0


  •	(Mental Model):
    - Write a method that takes in a string
    - Determine and return the ASCII string value of given string
    - The ASCII string value is the sum of the ASCII values of every character in the string


(Examples / Test Cases):

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

(Data Structure): Integer

(Algorithm):
  Create `ascii_value` method that takes in a string as an argument
  create `total` variable that points to a value of 0
  split string into individual characters
  after splitting string, iterate through array using the String#ord method to find ASCII value
  save character total in `total` method


=end

# (Code)

def ascii_value(string)
  total = 0

  # alternate solution
  #string.each_char {|element| total += element.ord}

  string.chars.each do |element|
    total += element.ord
  end
  total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0