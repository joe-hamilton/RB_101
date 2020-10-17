#age = rand(20..200)

#puts "Teddy is #{age} years old."

#Further exploration

age = rand(0..200)

puts "What is your name?"
name = gets.chomp

if name.empty?
  puts "Teddy is #{age} years old."
else
  puts "#{name} is #{age} years old."
end