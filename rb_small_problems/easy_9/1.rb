# Welcome Stranger

=begin
(Understand the Problem)
  Problem:
    Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces,
    will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a
    greeting that uses the person's full name, and mentions the person's title and occupation.

  Inputs: One Array and one Hash
  Outputs: A String
  Questions:
    1.
  Explicit Rules:
    1. The input Array will produce a person's full name when combined with adjoining spaces
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes two arguments, an Array and a Hash
    - The Array will contain a person's name when combined with adjoining spaces, and the keys of the Hash is the person's title and occupation
    - The method should return a greeting that uses the person's full name, along with their title and occupation

(Examples/Test Cases)
  greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
  => Hello, John Q Doe! Nice to have a Master Plumber around.

(Data Structure)
    String

(Algorithm)
    - Define a method with two parameters: a 'full_name' array and a 'credentials' hash
      - Join the 'full_name' array, creating a name String, and assign it to local variable 'name'
      - Create a sentence with the 'name' inserted and values of the 'credentials' keys inserted

(Code)
=end

def greetings(full_name, credentials)
  name = full_name.join(' ')
  puts "=> Hello, #{name}! Nice to have a " +
  "#{credentials[:title]} #{credentials[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.