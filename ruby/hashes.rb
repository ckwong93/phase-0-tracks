=begin
-Prompt the user for all the infomation
-convert any user input to the appropriate date type
-print hash back out to the screen
-give user a chance to update infomation
=end

system "clear"

client_info = {}

#Client's info
puts "***************"
puts "Client's' Info"
puts "***************"

puts "Client's name: "
name = gets.chomp.to_s.capitalize
client_info[:Name] = name

puts "Client's age: "
age = gets.chomp.to_i
client_info[:Age] = age

puts "Number of children: "
children = gets.chomp.to_i
client_info[:Children] = children

puts "Decor theme: (Modern, Country, Rustic, Contemporary) "
theme = gets.chomp.to_s.capitalize
client_info[:Decor] = theme

#print info

client_info.each { |x,y| puts "#{x}:#{y}"  }

#update client info

puts "*********************"
puts "Update Client's Info"
puts "*********************"

update = ""
while update != "done" do

puts "Would you like to make any updates/change?? (name,age,children,theme) If you have nothing to
change please type 'done'.Thanks!"
update = gets.chomp

  if update == "name"
    puts "Client's Name: "
    update_name = gets.chomp.to_s.capitalize
    client_info[:Name]= update_name

  elsif update == "age"
    puts "Client's Age: "
    update_age = gets.chomp.to_i
    client_info[:Age]= update_age

  elsif update == "children"
    puts "Number of Chldren: "
    update_children = gets.chomp.to_i
    client_info[:Children]= update_children

  elsif update == "theme"
    puts "Decor: (Modern, Country, Rustic, Contemporary)"
    update_theme = gets.chomp.to_s.capitalize
    client_info[:Decor]= update_theme

  else
    puts "Your info as been updated. Talk to you soon!"

    end
  end

  client_info.each { |x,y| puts "#{x}:#{y}"  }
