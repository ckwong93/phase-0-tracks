=begin
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
=end

module Shout

  def school(words)
    words + "!!!" + " :o"
  end
end

  class Teacher
    include Shout
  end

  class Students
    include Shout
  end




teacher = Teacher.new
puts teacher.school("You are late")

students = Students.new
puts students.school("It won't happen again")
