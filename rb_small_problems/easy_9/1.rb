# Welcome Stranger

=begin
(Understand the Problem)
  Problem:
    Create a method that takes 2 arguments, an array and a hash
      - The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name
      - The hash will contain two keys, :title and :occupation, and the appropriate values
      - Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation

  Inputs: An Array and a Hash
  Outputs: String (greeting that uses the person's full name, and mentions the person's title and occupation)
  Questions:
    1.
  Explicit Rules:
    1. The elements in the input Array should be combined with adjoining spaces when added to output String
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes two arguments, an Array and Hash
    - The Array will be a person's name when all elements are combined using adjoining spaces
    - The Hash will contain two keys, :title and :occupation
    - Your method should return a greeting that uses the person's full name, and mentions their title and occupation

(Examples/Test Cases)
  greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
  => Hello, John Q Doe! Nice to have a Master Plumber around.

(Data Structure)
    String

(Algorithm)
    - Define method `greetings` with two parameters `name` and `description`
      - Initialize local variable `full_name` to the value of combining the elements in `name` and separating them by spaces
      - Initialize local variable `title` to the value of the corresponding value of :title in `description`
      - Initialize local variable `occupation` to the value of the corresponding value of :occupation in `description`
      - Create a sentence that adds in `full_name` and the values of `description`

(Code)
=end

def greetings(name, description)
  full_name = name.join(' ')
  title = description[:title]
  occupation = description[:occupation]

  "=> Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.