require 'date'
current_year = Date.today.year
current_year = current_year.to_i

count = 0
puts "How many employees will be processed?"
employees = gets.chomp.to_i
while count < employees

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

#Testing question Loop

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


#Allergies Loop

allergies = "sunshine"
user_input = ""

puts "Please list all your allergies and write [Done] when you are done listing."
while user_input != allergies
user_input = gets.chomp
break if user_input == "done"
end

if user_input == "sunshine"
puts "Probably a vampire"
end

count += 1

end

puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends?"
