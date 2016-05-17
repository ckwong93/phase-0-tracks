class Puppy

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
