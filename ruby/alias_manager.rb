
#Ask user for input
#Save vowels and consonants
#Swap first and last name
# Get translated code into a new array
#Add a hash

system "clear"

# Going through vowels and consonants

def alias_name(name)
  new_alias =[]
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  nickname_split=name.split("")
  nickname_split.map! do |x|
    if vowels.include?(x)
      new_alias << vowels[vowels.index(x)+1]
    elsif consonants.include?(x)
      new_alias << consonants[consonants.index(x)+1]
    else
      puts ""
    end
  end

new_alias.join("").split.map { |x| x.capitalize}.join("")
end

nickname_hash = {}

# user input

user_input = ""
puts "Would you like to go incognito?"
user_input = gets.chomp.to_s.downcase

until user_input == "no" || user_input == "maybe"

  puts "What's your full name?"
  full_name = gets.chomp.to_s.downcase
  name = full_name
  puts "Here is your alias:   " + alias_name(name)

  puts "Did you like your alias name?"
  nickname = gets.chomp

  nickname_hash[full_name.capitalize] = alias_name(name)
  puts "Would you like to go incognito again?"
  user_input = gets.chomp.to_s.downcase

end

nickname_hash.each do |name,nickname|
	puts "True identity of #{nickname} is #{name}. This message will self destruct in 5..4..3..2..1 BOOM!"
end
