def crunch(string)
  new_string = []

  string.chars.each do |letter|
    new_string << letter unless new_string.last == letter
  end
  new_string.join
end


p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''