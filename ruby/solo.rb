#Release 0:Design a class
# - Write three attributes
# - Write 3 methods, at least one that takes an arugment

class pizza
  attr_reader
  attr_accessor

  def initialize(argument)
    @crust = crust
    @toppings = toppings
    @delivery = delivery
  end

  def pick_up_order_type
    print "Delivery or pickup"
    order = gets.chomp.to_s.downcase
    if order == "delivery"
      puts "Name: "
      name = gets.chomp.to_s
      puts "Address: "
      address = gets.chomp
      puts "City: "
      city = gets.chomp.to_s.capitalize
      puts "State: "
      state = gets.chomp.to_s.upcase
      puts = "Zipcode: "
      zipcode = gets.chomp.to_i
      puts = "Phone number: "
      number = gets.chomp.to_i
    else
      print "Your order will be ready 30 mins!"
    end
  end
end

pizza = Pizza.new
pizza.pick_up_order_type
