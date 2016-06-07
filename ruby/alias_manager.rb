system "clear"
=begin
def full_name
	puts "What's your first name?"
	first_name = gets.chomp
	puts "What's your last name?"
	last_name = gets.chomp
	p "#{last_name}, #{first_name}"
end
=end
#create an array
# Next, changing vowels and consonants to the next letter
def changing_letters(name)
  nickname = []
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  changing_names = name.split("")
  changing_names.map! do |var|
    if vowels.include?(var)
      nickname << vowels[vowels.index(var)+1]
    elsif consonants.include?(var)
      nickname << consonants[consonants.index(var)+1]
    end
  end
  nickname.join("")
  end
puts changing_letters("anish")
