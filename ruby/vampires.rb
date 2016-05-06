require 'date'
current_year = Date.today.year
current_year = current_year.to_i

puts "What's your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Should we order some garlic bread for you?(y/n)"
g_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?(y/n)"
insurance = gets.chomp

#Testing

if name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire"
elsif age != current_year - year && (g_bread == "n" || insurance == "n")
  puts "Probably a vampire"
elsif age == current_year - year && (g_bread == "y" || insurance == "y")
  puts "Probably not a vampire"
elsif age != current_year - year && (g_bread == "n" && insurance == "n")
  puts "Almost certainly a vampire"
else
  puts "Results inconclusive"
end
