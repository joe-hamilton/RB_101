# Unlucky Days

=begin
(Understand the Problem)
  Problem:
    Write a method that returns the number of Friday the 13ths in the year given by an argument.

  Inputs: Integer (year)
  Outputs: Integer (# of Friday the 13ths in given year)
  Questions:
    1.
  Explicit Rules:
    1. You may assume that the year is greater than 1752
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that determines and returns the # of Friday the 13ths in the input year
    -

(Examples/Test Cases)
  friday_13th(2015) == 3
  friday_13th(1986) == 1
  friday_13th(2019) == 2

(Data Structure)
  Integer

(Algorithm)
    - Initialize local variable `count` and assign it to 0
    -
    -

(Code)
=end


require 'date'

def friday_13th(year)
  Date.new(year).step(Date.new(year, -1, -1)).select{ |day| day.friday?}.select{ |date| date.mday == 13 }.size
end




p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2