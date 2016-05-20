def list_creator(string)
	grocery_list={}
	items = string.split(" ")
	items.each { |item| 
		grocery_list[item] = 1}
	printout(grocery_list)
end

def add_or_update(items,grocery_list,qty=1)
	grocery_list[items] = qty
	printout(grocery_list)
end

def remove(items,grocery_list)
	grocery_list.delete(items)
	printout(grocery_list)
end


def printout(grocery_list)
	grocery_list.each {|items, qty|
	puts "#{items} : #{qty}"}
end

my_groceries = list_creator("Lemonade Tomatoes Onions Ice_Cream")
my_groceries

qty_updater("Lemonade",my_groceries,2)
qty_updater("Tomatoes",my_groceries,3)
qty_updater("Onions",my_groceries,1)
my_groceries

remove("Lemonade",my_groceries)
my_groceries

qty_updater("Ice_cream",my_groceries,1)
my_groceries

printout(my_groceries)
print "Hello"
my_groceries