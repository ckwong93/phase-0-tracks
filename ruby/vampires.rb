puts "How many employees will be procesed?"
employees_processed=gets.chomp.to_i
index=0

while employees_processed > index
puts "What is your name?"
name=gets.chomp.to_s
puts "How old are you? What year were you born?"
age=gets.chomp.to_i
puts "Would you like some garlic bread?"
gbread=gets.chomp
puts "Would you like to enroll in the company's health insurance?"
insurance=gets.chomp


allergy=""
while allergy != "done" && allergy != "sunshine"
	puts "List any allergies (type done when finished)"
	allergy=gets.chomp
end

if allergy=="sunshine"
puts "Probably a vampire"

=begin If name = "Drake Cula" or name = "Tu Fang" is listed last as instructed, there are very few scenarios where it will print "Definitely a vampire" 
since it has to pass all the others if statements first. By placing it first, if the names are Drake Cula or Tu Fang, it will print correctly. Also, I switched the order
of "almost certainly a vampire" and "probably a vampire" because if the criteria meets "almost certainly a vampire" it will output "probably a vampire" since they are so similar.
By reordering it, the logic statements work much better and output the correct answer.
=end
elsif name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"
elsif age < 100 && (gbread == "yes" || insurance == "yes")
	puts "Probably not a vampire"
elsif age > 100 && gbread == "no" && insurance == "no"
	puts "Almost certainly a vampire"
elsif age > 100 && (gbread == "no" || insurance == "no")
	puts "Probably a vampire"
else
	puts "Results inconclusive"
end

index+=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

