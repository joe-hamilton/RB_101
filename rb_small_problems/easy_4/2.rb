=begin
(Problem):
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number,
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.


(Understand the Problem):
  •	(Inputs): Integer that represents the year (Ex: 1987)


  •	(Outputs): String that represents the century of input year (Ex: 20th)


  •	(Questions):



  •	(Rules):
    o	(Explicit):
      - The input should be a given year
      - The output should be the century of given year
        - Should be represented as a string that begins with century number, and ends with st, nd, th, rd
      - New centuries begin in years that end with 01 (Ex: 1901-2000 is the 20th century)

    o	(Implicit):


  •	(Ideas):

(Examples / Test Cases):

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'


(Data Structure): String (Ex: '20th')

(Algorithm):
  - Create method `century` that takes in a year and determines the century number (Ex: 2000 = '20')
    - To find century number, calculate `year` / 100 + 1 and place value in `century` variable
      - However, subtract 1 from century variable if `year` % 100 == 0
    - Turn `century` into a string and concatenate that with `century_suffix` method

  - Create method `century_suffix` that takes in one argument (century)
    - Initialize `last_digit` variable that holds value of `century` % 10
    - Create case statement for `last_digit`
      - When 1 put 'st'
      - When 2 put 'nd'
      - When 3 put 'rd'
      - else put 'th'

(Code)

=end

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0

  p century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11,12,13].include?(century % 100)

  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'