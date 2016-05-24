#Release 0:Design a class
# - Write three attributes
# - Write 3 methods, at least one that takes an arugment

system "clear"

def title
	puts title = "Order your Pizza:"
	puts "-------------------------"
end

title

class Pizza
  attr_accessor :delivery, :crust, :toppings

  def initialize
    @delivery = delivery
    @crust = crust
    @toppings = []
  end

  def pick_up_order_type
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

    else
      print "Your order will be ready 30 mins!"
    end
  end

  def crust
    puts "What type of crust would you like? (Pan, Thin, or Deep Dish)"
    @crust = gets.chomp.to_s.capitalize
  end

  def toppings(toppings)
    toppings =""
    until @toppings != "done"
    p "Type 'done' when finished picking toppings."
    puts "Vegetables: Green peppers, Mushrooms, Onions, Olives, Broccoli
    Meats:Bacon, Beef, Chicken, Ham, Pepperoni "
    @toppings = gets.chomp.to_s.capitalize
    @toppings = toppings
    end
    return toppings
  end

  def print_order(client_info)
    print "Client Information"
    puts "-------------------"
    puts ""
    client_info.each {|x, y| puts "#{x}:#{y}"}
  end

end

pizza_order = Pizza.new
pizza_order.pick_up_order_type
pizza_order.toppings(@toppings)
