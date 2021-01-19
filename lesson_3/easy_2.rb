=begin
#In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#see if "Spot" is present.
p ages.include?("Spot")

#Bonus: What are two other hash methods that would work just as well for this solution?
p ages.has_key?("Spot")
p ages.member?("Spot")
=end

=begin
#Starting with this string:
munsters_description = "The Munsters are creepy in a good way."
#Convert the string in the following ways (code will be executed on original munsters_description above):

#"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
#"The munsters are creepy in a good way."
#"the munsters are creepy in a good way."
#"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

puts munsters_description.swapcase
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase
=end

=begin
#We have most of the Munster family in our age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
#add ages for Marilyn and Spot to the existing hash
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge(additional_ages)
=end

=begin
#See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("Dino")
=end

=begin
#Show an easier way to write this array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

p flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
=end

=begin
#How can we add the family pet "Dino" to our usual array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"
p flintstones
=end

=begin
#In the previous practice problem we added Dino to our array like this:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#flintstones << "Dino"
#How can we add multiple items to our array? (Dino and Hoppy)

p flintstones.concat(%w(Dino Hoppy))
p flintstones.push("Dino", "Hoppy")
=end

=begin
#Shorten this sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
#...remove everything starting from "house".
#Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ".
#But leave the advice variable as "house training your pet dinosaur.".

p advice.slice!(0, advice.index("house"))
p advice
=end

=begin
#Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"

p statement.count("t")
=end

=begin
#Back in the stone age (before CSS) we used spaces to align things on the screen.
#If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?
title = "Flintstone Family Members"

p title.center(40)
=end