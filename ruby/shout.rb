
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  words + "!!!" + " :)"

  end

end

puts Shout.yell_angrily("Hello")
puts Shout.yelling_happily("Audrey")
