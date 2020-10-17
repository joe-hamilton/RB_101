=begin
(Problem):
Build a program that displays when the user will retire and how many years she has to work till retirement.

(Understand the Problem):
•	(Inputs): Integer from user


•	(Outputs): String


•	(Questions):



•	(Rules):
  o	(Explicit):
    Display when the user will retire
    Display how many years they have to work until retirement

  o	(Implicit):

•	(Ideas):

(Examples / Test Cases):

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

(Data Structure): String

(Algorithm / Pseudocode):

Set variable `current_year` to a value of 2020
Get input from user on their age: age
Get input from user on the age they would like to retire: retirement_age
Subtract retirement_age by age and save value in `time_to_retirement` variable
Add current year to `time_to_retirement` and save value in `year_of_retirement` variable
Create string that displays current year and the year they will retire
Create string that displays how many years they have left.


(Code)

=end

CURRENT_YEAR = Time.now.year

puts "What is your age? "
age = gets.chomp.to_i

puts "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

time_to_retirement = retirement_age - age
year_of_retirement = CURRENT_YEAR + time_to_retirement

puts "It's #{CURRENT_YEAR}. You will retire in #{year_of_retirement}."
puts "You only have #{time_to_retirement} years of work to go!"