class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender,ethnicity)
		
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		p "Initializing Santa instance..."
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def celebrate_birthday
		p @age + 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name)
	end

=begin	REMOVED SETTER METHOD and added attr_accessor to top of page
	def gender=(new_gender)
		@gender = new_gender
	end
#Setter method for gender. Allows @gender to be reassigned from outside the class definition
=end

=begin REMOVED GETTER and added attr_reader to top of page
	def age
		@age
	end
#Getter method for age
	def ethnicity
		@ethnicity
	end
#Getter method for ethnicity

	def gender
		@gender
	end
#Added getter for gender so that we can see what the gender is after we used the setter to re-define the gender value	
end
=end


chris = Santa.new("male","asian")
chris.speak
chris.eat_milk_and_cookies("snickerdoodle")
chris.celebrate_birthday
chris.get_mad_at("Dancer")
chris.gender = "ambiguous"
puts "Chris is #{chris.age} years old and is #{chris.ethnicity}. His gender is #{chris.gender}"


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

example_genders.zip(example_ethnicities).each do |gender, ethnicity|
	puts "#{gender.capitalize} and #{ethnicity.capitalize} describe the gender & ethnicity, respectively, of one of the santa's in our database"
end

santas.each do |santa|
	santas_age=rand(150) 
	puts "Santa's ethnicity is #{example_ethnicities.sample}, Santa's gender is #{example_genders.sample}, and Santa's age is #{santas_age}"
end
end
