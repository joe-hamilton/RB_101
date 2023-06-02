# Write a method that takes an integer, and converts it to a string representation.

INT_TO_STR = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
               5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def num_str(num)
  INT_TO_STR[num]
end

def integer_to_string(num)
  str = ""
  num_arr = num.digits.reverse

  num_arr.each do |n|
    str << num_str(n)
  end
  str
end

def signed_integer_to_string(num)
  return "0" if num == 0
  num > 0 ? "+#{integer_to_string(num)}" : "-#{integer_to_string(-num)}"
end


#Alternate Solution
# def signed_integer_to_string(num)
#   case num <=> 0
#   when -1 then "-#{integer_to_string(-num)}"
#   when +1 then "+#{integer_to_string(num)}"
#   else         integer_to_string(num)
#   end
# end

# Alternate Solution
# def signed_integer_to_string(num)
#   if num > 0
#     '+' + integer_to_string(num)
#   elsif num < 0
#     new_num = (num - num) - num
#     '-' + integer_to_string(new_num)
#   else
#     integer_to_string(num)
#   end
# end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'