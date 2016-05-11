#Release 1: Explore the Docs	
	calvin_array=[]
	p calvin_array
	calvin_array << "my" << "name" << "is" <<"calvin"
	p calvin_array
	calvin_array.delete_at(2)
	p calvin_array
	calvin_array.insert(2,"real")
	p calvin_array
	calvin_array.shift
	p calvin_array
	calvin_array.include?("name")
	p "yes, includes name" if calvin_array.include?("name")	
	# will print "yes, includes name" instead of "true" if the statement is true
	tim_array = ["Tim", "is", "my", "name"]
	name_extravaganza = calvin_array + tim_array
	p name_extravaganza

#Release 2: Use Arrays in Methods
	def build_array(arr,value,three)
		build_array=[]
		build_array << arr << value << three
	end
		build_array(1,"two",nil)
	#This will return build_array = [1, "two", nil]

	def add_to_array(array,item)
	add_to_array=[]
	add_to_array.push(array,item).flatten
	end
		#This will return the combination of both arrays and remove extra brackets
		p add_to_array([],"a")
		#This prints out ["a"]	
		p add_to_array(["a", "b", "c", 1, 2], 3)
		#This prints out ["a","b","c",1,2,3] wihtout the extra brackets