puts "What is your hamster's name"
name=gets.chomp.to_s
puts "What is your hamster's volume level from 1 to 10"
volume=gets.chomp.to_s
puts "What is the hamster's fur color"
fur=gets.chomp.to_s
puts "Is the hamster a good candidate for adoption? (Yes/No)"
candidate=gets.chomp.to_s
puts "What is the estimated age"
age=gets.chomp.to_i

puts "The hamster's name is: #{name}"
puts "The volume level is #{volume}"
puts "The fur color is #{fur}"
puts "Adoption ready?: #{candidate}"
puts "Estimated age: #{age}"