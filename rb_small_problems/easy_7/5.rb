# Staggered Caps (Part 1)

def staggered_case(string)
  new_string = []
  string.chars.each_with_index do |char, index|
    if index.even?
      new_string << char.capitalize
    elsif index.odd?
      new_string << char.downcase
    end
  end
  new_string.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'