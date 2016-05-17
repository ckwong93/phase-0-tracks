#Release 0: Design a class 
#Use 3 attributes whose values will vary from instance to instance(ex: age)
#Use 3 methods, at least one of which takes an argument


class Dragon

	attr_accessor :name,:color,:age
	#allows for getter/setter for all 3 attributes

	def initialize(name,color,age)
		@name = name
		@color = color
		@age = age
	end

	def breathe_fire
		p "#{name} is a fire-breathing dragon. *fire*fire*fire"
	end

	def biography
		p "#{name} is a #{age} year old dragon that is #{color}"
	end

	def territory(location)
		p "#{name} is currently marking his territory in #{location} using his incinerating fireballs (and pee)"
	end

end


=begin dragon=Dragon.new("Carl","Red","50")
dragon.breathe_fire
dragon.biography
dragon.territory("Alaska")
=end 
#driver code to test that all of the methods work

dragon_name_array=[]
dragon_color_array=[]
dragon_age_array=[]
#These 3 arrays will store data from UI
dragons=[]
#This will store the class instances we've created
continue=""
#Default set to "" so that we can loop until we don't want to create any additional dragons

until continue == "no"
	p "Name your dragon. (type 'exit' to leave)"
		dragon_name = gets.chomp
			dragon_name_array << dragon_name

	p "Color your dragon"
		dragon_color = gets.chomp
			dragon_color_array << dragon_color

	p "Age your dragon"
		dragon_age=gets.chomp
			dragon_age_array << dragon_age

	p "Want to create another dragon? Type 'yes' or 'no'"
		continue=gets.chomp
end


dragon_name_array.length.times do |i|
		dragons << Dragon.new(dragon_name_array[i],dragon_color_array[i],dragon_age_array[i])
end
#looks at dragon_name_array and for each element, it will create an instance in the Dragon class using UI info


ObjectSpace.each_object Dragon do |obj|
		obj.biography
end
#Allows us to run a method for each object that we stored. In this case we are using biography so we can see
#all of the data that we stored above

