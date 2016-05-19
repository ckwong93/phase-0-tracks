class Dancer

attr_reader :name
attr_accessor :age 

	def initialize(name,age)
		@name=name
		@age=age
	end

	def name
		@name	
	end

	def age
		@age
	end

	def age=(new_age)
		@age=new_age
	end

end
