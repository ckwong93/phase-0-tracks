class Dancer

attr_reader :name
attr_accessor :age 

	def initialize(name,age)
		@name=name
		@age=age
		@dance_list=[]
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

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(ballerina)
		@dance_list << ballerina
	end

	def card
		@dance_list
	end

	def begin_next_dance
		p "Now dancing with #{@dance_list[0]}."
		@dance_list.delete_at(0)
	end

#Returns a phrase that counts how many people are in the dance list queue
	def queue_counter
		"#{@dance_list.count} dancer(s) remain in the queue. Please sign up soon if you would like to dance"
	end

end
