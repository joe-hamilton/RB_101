# Tip calculator

puts "What is the bill? "
bill = gets.chomp.to_f

puts "What is the tip percentage? "
tip_percent = gets.chomp.to_f

tip_in_dollars = (bill * (tip_percent / 100)).round(2)

total_bill = (bill + tip_in_dollars).round(2)

puts "The tip is $#{format("%.2f", tip_in_dollars)}"
puts "The total is $#{format("%.2f", total_bill)}"