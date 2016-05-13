# Getting Client's Information

system "clear"
client_info = {}

def title
	puts title = "Interior Design Interview Questions"
	puts "------------------------------------"
end



title

puts "Hello, please type your name:"
name = gets.chomp.to_s.capitalize
client_info[:User] = name


puts "What's your age?"
age = gets.chomp.to_i
client_info[:Age] = age

puts "How many children do you have?"
children = gets.chomp.to_s
client_info[:Kids] = children

puts "Lastly, what decor theme would you like? (Modern, Country, Rustic, Contemporary)"
decor = gets.chomp.to_s.capitalize
client_info[:Theme] = decor


print "Client Information"
puts ""
client_info.each {|x, y| puts "#{x}:#{y}"}
puts ""

#update changes if needed
while update != 'none'

puts "Type the item that needs to be changed (name, age, children, decor). If nothing needs to be changed please type 'none' or 'no'."
update = gets.chomp.to_s

if update == "name"
  puts "Update your name if needed:"
  name = gets.chomp.to_s
  client_info[:User] = name

elsif update == "age"
  puts "Update your age"
  age = gets.chomp.to_i
  client_info[:Age] = age

elsif update == "children"
  puts "Update, how many children you have"
  children = get.chomp.to_i
  client_info[:Kids] = children

elsif update == "decor"
  puts "Have you changed you mind on your decor theme? If so, tell us which one you prefer (Modern, Country, Rustic, Contemporary)."
  decor = gets.chomp.to_s
  client_info[:Theme] = decor

else
  puts "Thanks! Have a great day!"
end

end
print "Client Information"
puts ""
client_info.each {|x, y| puts "#{x}:#{y}"}
