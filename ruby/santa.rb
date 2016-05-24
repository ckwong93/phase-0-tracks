system "clear"

class Santa
  attr_reader :age, :ethnicity
	attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
    "Comet", "Cupid", "Donner", "Blitzen"]
    print "Initializing Santa instance..."
    @age = 0
  end

  def speak
    print "Ho, Ho, Ho! Haaaappy Holidays!"


  end

  def eat_milk_and_cookies(cookie)
    print "That was a good #{cookie}!"

  end

  def celebrate_birthday
    print @age + 1

  end

  def get_mad_at(name)
    @reindeer_ranking.push(name)


  end

santa = Santa.new("male", "asian")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
santa.celebrate_birthday
santa.get_mad_at("Dancer")
santa.gender = "ambiguous"
puts "Santa is #{santa.age} years old and is #{santa.ethnicity}. His gender is #{santa.gender}."

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
