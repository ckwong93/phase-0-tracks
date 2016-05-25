#Release 0:Design a class
# - Write three attributes
# - Write 3 methods, at least one that takes an arugment
#
system "clear"

def title
	puts title = "Order your Pizza:"
	puts "-------------------------"
end

title

class Pizza
	attr_accessor :crust, :toppings, :client_info

  def initialize
    @crust = crust
    @toppings = toppings
  end

  def pick_up_order_type
  	@pick_up_order_type = pick_up_order_type
  end

  def order_confirmation
  	@client_info = client_info

  	print "Client Information"
		  puts "-------------------"
		  puts ""

  end
end

client_info = {}
puts "Delivery or pickup"
order = gets.chomp.to_s.downcase

if order == "delivery"
puts "Name: "
name = gets.chomp.to_s.capitalize
client_info[:Name] = name

puts "Address: "
address = gets.chomp
client_info[:Address] = address

puts "City: "
city = gets.chomp.to_s.capitalize
client_info[:City] = city

puts "State: "
state = gets.chomp.upcase
client_info[:State] = state

puts "Zipcode: "
zipcode = gets.chomp.to_i
client_info[:Zipcode] = zipcode

puts "Phone number: "
number = gets.chomp.to_i
client_info[:PhoneNumber] = number

puts "What type of crust would you like? (Pan, Thin or Deep-Dish)"
@crust = gets.chomp.to_s.downcase
client_info[:Crust] = @crust


puts "Type 'done' when finished picking toppings."
puts "Vegetables: Green peppers, Mushrooms, Onion,Olives, Broccoli
Meats:Bacon, Beef, Chicken, Ham, Pepperoni"
until @toppings == "done" do
@toppings = gets.chomp.to_s.downcase
client_info[:Toppings] = @toppings

end
else

puts "Name: "
name = gets.chomp.to_s.capitalize
client_info[:Name] = name

puts "Phone number: "
number = gets.chomp.to_i
client_info[:PhoneNumber] = number

puts "What type of crust would you like? (Pan, Thin or Deep-Dish)"
@crust = gets.chomp.to_s.downcase
client_info[:Crust] = @crust

puts "Type 'done' when finished picking toppings."
puts "Vegetables: Green peppers, Mushrooms, Onion,Olives, Broccoli
Meats:Bacon, Beef, Chicken, Ham, Pepperoni"

until @toppings == "done" do
@toppings = gets.chomp.to_s.downcase
client_info[:Toppings] = @toppings

end
end

pizza = Pizza.new
p pizza.order_confirmation
client_info.each {|x, y| puts "#{x}:#{y}"}
