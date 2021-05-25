=begin
(Understand the Problem)
  Problem:
    In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4,
    unless the year is also divisible by 100. If the year is evenly divisible by 100,
    then it is not a leap year unless the year is evenly divisible by 400.

    Assume this rule is good for any year greater than year 0.
    Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year,
    or false if it is not a leap year.

  Inputs: Integer (year)
  Outputs: Boolean (true or false)
  Questions:
    1.
  Explicit Rules:
    1. Leap year occurs when the year is evenly divisible by 400. Also occurs when year is divisible by 4
    2. Not a leap year when year is divisible by 100
    3. Input year will be greater than 0
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes any year greater than 0 as input
    - Return true if input year is a leap year, false if not a leap year

(Examples/Test Cases)
  leap_year?(2016) == true
  leap_year?(2015) == false
  leap_year?(2100) == false
  leap_year?(2400) == true
  leap_year?(240000) == true
  leap_year?(240001) == false
  leap_year?(2000) == true
  leap_year?(1900) == false
  leap_year?(1752) == true
  leap_year?(1700) == false
  leap_year?(1) == false
  leap_year?(100) == false
  leap_year?(400) == true

(Data Structure)
    - Output will be in boolean format (true if leap year, false otherwise)

(Algorithm)
    - Create method `leap_year` that takes in one argument (year)
      - create an if/else conditional that checks if input year is divisible by 400 (leap year),
        divisible by 4 and not divisible by 100 (leap year)
    -

(Code)
=end

# Alternate solution

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 4 == 0 && year % 100 != 0
#     true
#   else
#     false
#   end
# end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true