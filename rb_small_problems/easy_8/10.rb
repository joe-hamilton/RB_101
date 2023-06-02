# Get the Middle Character

=begin
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.
=end

def center_of(str)
  middle_char = (str.size / 2.0).ceil

  return str[middle_char - 1] if str.size.odd?
  return str[middle_char - 1, 2] if str.size.even?
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'