#Release 0

def iteration
  name1 = "Audrey"
  name2 = "Anish"
  puts "I am learning iteration!"
  2.times { yield(name1, name2) }

end
iteration { |name1, name2| puts "#{name1} and #{name2} come and learn!" }
