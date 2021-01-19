# Write a method that takes an integer, and converts it to a string representation.

INTEGER_TO_STRING = {
0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  string_equiv = integer.digits.reverse.map do |ele|
    INTEGER_TO_STRING[ele]
  end
  string_equiv.join
end

def signed_integer_to_string(num)
  case num <=> 0
  when -1 then "-#{integer_to_string(-num)}"
  when +1 then "+#{integer_to_string(num)}"
  else         integer_to_string(num)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'