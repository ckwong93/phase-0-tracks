#5.6 Solo Challenge Pseudocode
#Ask user for input
#Save vowels and consonants so that you can change to the next letter
#Swap first and last name by asking for each part of name and then adding it starting with last + first
#Make the translated code go into a new array
#Add a hash at the end to store the names





def alias_creator(nickname)
vowels="aeiou"
consonants="bcdfghjklmnpqrstvwxyz"
#consonants exclude all vowels

nickname_split=nickname.split("")
new_nickname=[]
#The translated nickname will be saved in the new_nickname arrawy

nickname_split.map! do |x|
	if vowels.include?(x)
		new_nickname << vowels[vowels.index(x)+1]
	elsif consonants.include?(x)
		new_nickname << consonants[consonants.index(x)+1]
	elsif x == " "
		new_nickname << " "
	end
end
new_nickname.join("").split.map {|x| x.capitalize}.join(" ")
#We are doing this so that we capitalize the first letter of both words
end


alias_hash={}
#aliases and real names will be saved in here

print "Would you like an alias?"
answer=gets.chomp	

until answer == "no"
puts "Type your first name"
first_name=gets.chomp.downcase
puts "Type your last name"
last_name=gets.chomp.downcase
nickname=last_name+" "+first_name
puts "Here is your alias:   " + alias_creator(nickname)
puts "Want another alias?"
answer=gets.chomp
alias_hash[first_name.capitalize+" "+last_name.capitalize] = alias_creator(nickname)
end



alias_hash.each do |name,nickname|
	puts "The true identity of #{nickname} is actually #{name}"
end


