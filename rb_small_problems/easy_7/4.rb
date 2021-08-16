# Swap Case

def swapcase(string)
  swapped_case = string.chars.map do |letter|
    if letter == letter.upcase
      letter.downcase
    elsif letter == letter.downcase
      letter.upcase
    else
      letter
    end
  end
  swapped_case.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'