=begin
(Understand the Problem)
  Problem:
    Write a method that will take a short line of text, and print it within a box.

  Inputs: String
  Outputs: String (a box with input String inside)
  Questions:
    1.
  Explicit Rules:
    1. You may assume that the input will always fit in your terminal window
    2.
  Implicit Rules:
    1. If the input String is empty, the method should return an empty box
    2.
  Mental Model:
    - Write a method that takes a String as an argument and returns a box with the input String printed inside
    -

(Examples/Test Cases)


(Data Structure)
    String (a box with the input String printed inside)

(Algorithm)
    - Define method `print_in_box` with one parameter `text`
        -  Create the box that the input String will go inside
            - 1st line: print out `+` followed by `-` ending in `+`. The number of `-` is the length of the input String + 2
            - 2nd line: print out `|` followed by ` ` ending in `|`. The number of spaces is the length of the input String + 2
            - 3rd line: print out `|` followed by (` ` * 1), then `text`, then (` ` * 1), ending in `|`.
            - 4th line: same as 2nd line
            - 5th line: same as 1st line

(Code)
=end

def print_in_box(text)
  horizontal_rule = "+" + ("-" * (text.length + 2)) + "+"
  empty_line = "|" + (" " * (text.length + 2)) + "|"

  puts horizontal_rule
  puts empty_line
  puts "| " + text + " |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')