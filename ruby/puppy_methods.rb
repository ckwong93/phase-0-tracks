class Puppy

  
  def initialize
    print "Initializing new puppy instance..."
  end
#Everytime you create a new instance of puppy class (appa = Puppy.new), it will print "initializing a new puppy instance..."

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end


  def speak(integer)
  	integer.times do |x|
   		print "Woof!"
   	end
  end


  def dog_years(int)
  	dog_age=int/7.0
  	print "You are #{dog_age} years old in dog years"
  end

  def puppy_time(time)
    if time >= 0 && time < 11
      print "Playtime!"
    elsif time >= 11 && time <= 12
      print "ZzZZZ!"
    end
  end 

  

end

appa=Puppy.new
#Creates "appa" as new instance of Puppy class. (appa is the name of my dog)
appa.fetch("bone")
#Instance method that tells appa (instance) to fetch the bone
appa.speak(5)
#Instance method that tells appa (instance) to say "Woof!" 5 times
appa.dog_years(47)
#Instance method that converts human years to dog years. (dog years = human years / 7)
puppy_time(11)
#Instance method that prints what appa is doing based on the time. At 11 o'clock, he is playing


#Release 2: Write you own class, and experiment
class Soldier

  def initialize
    print "Soldier Initation completed!"
  end
#Everytime you create a new instance, initialize will print

  def soldier_counter(int)
    int.times do |x|
      print "Hut two three four..."
    end
  end
#Will print "Hut two three four" 'int' times

  def united_soldiers(int)
    int.times do |x|
      print "United We Stand!"
    end
  end
#Will print "United We Stand!" 'int' times

  def soldier_time(time)
    if time >=0 && time <=7
      p "Rise and Shine!"
    elsif time >= 7 && time <= 10
      p "Chore time!"
    elsif time > 10 && time <= 18
      p "Time for some PT"
    elsif time > 18 && time <= 24
      p "Resting up for tomorrow"
    else
      p "What are you doing, maggot?"
    end
  end
#Prints statement based on time. Note, does not work well with objectspace.each_object

end

soldier_array=[]
int=1
until int> 50
soldier_array[int] = Soldier.new
soldier_array << int
int+=1
end
#This creates an array and loops from numbers 1 to 50 to create 50 instances.

ObjectSpace.each_object Soldier do |obj|
  obj.soldier_counter(1)
  obj.united_soldiers(1)
end
#This goes through each object in Soldier class and performs the instance method for soldier_counter and united_soldiers



