# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

=begin
(1..99).each do |number|
    p number if number.odd?
end
=end

1.upto(99) do |num|
  p num if num % 2 == 1
end