=begin

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples.
For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

(Understand the Problem):
  •	(Inputs): Integer

  •	(Outputs): Integer (Sum of all multiples of 3 or 5 that lie between 1 and input integer)

  •	(Questions):

  •	(Rules):
    o	(Explicit): Assume that passed in integer is greater than 1


    o	(Implicit):


  •	(Mental Model):
      - Write a method that searches for multiples of 3 or 5 that lie between 1 and input integer
      - Compute sum of those multiples

(Examples / Test Cases):

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168



(Data Structure): Integer

(Algorithm):
  - Create method `multisum` that takes in one argument (max_number)
    - Initialize `sum` variable that holds a value of 0
    - Iterate through numbers 1 upto max value
      - if number is a multiple of 3 or 5...
        - add number to sum variable

  - Create method `multiple` that takes in two arguments (number, divisor)
    - Determine if number / divisor has a remainder equal to 0


=end

# (Code)

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_number)
  multiples = []

  1.upto(max_number) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      multiples << number
    end
  end
  multiples.reduce(:+)
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168