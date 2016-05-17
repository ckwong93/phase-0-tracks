class Puppy

  def initialize
    puts "Initalizing new puppy instance...."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
  i.times {p "woof"}
  end

  def roll_over
    puts "roll over"
  end

  def dog_years(human_years)
  puts human_years / 7
  end

  def jump
    puts "Jump on Audrey"
  end


end
chewy = Puppy.new
chewy.speak(5)
chewy.fetch("ball")
chewy.roll_over
chewy.dog_years(14)
chewy.jump

#Write your own class

class Cooking

  def initialize
    puts "Welcome to your first cooking class!"
  end

  def knife(i)
    i.times{p "chop"}
  end

  def seasoning(x)
    x.times{p "shake"}
  end

  def secret_ingredient(ing)
    puts "The only ingredient you need is #{ing}"
  end
end

#looping

cooking_array = []
i = 1
until i > 50
cooking_array[i] = Cooking.new
cooking_array << i
i += 1
end

#call the methods

ObjectSpace.each_object Cooking do |obj|
obj.knife(5)
obj.seasoning(5)
obj.secret_ingredient("salt")
end
