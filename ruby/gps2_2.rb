# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
system "clear"


def create_list
  puts "What type of list is this? "
  name = gets.chomp
  hash = {"name" => name, "items" => Array.new}
  return hash
end



def add_list_item
  another_item = ""
  while (another_item != "n") do
  puts "What is the item called?."
  item_name = gets.chomp

  puts "How much? "
  quantity = gets.chomp.to_i

  hash = {"name" => item_name, "quantity" => quantity}

  puts "Would you like to add another item?(y/n)."
  another_item = gets.chomp.to_s
end
  return hash

end


def delete_item (remove_item)
  puts "Which item would you like to remove from the list?"
  remove = gets.chomp
  remove = remove_item
  hash.delete_if { |name,item_name| remove_item == item_name }
  return hash
end

def print_list(list)
  puts "List: #{list['name']}"
  puts "-----"

  list["items"].each do |item|
    puts "item: " + item['name']
    puts "Quantity: " + item['quantity'].to_s
    puts "---"
  end
end

list = create_list()
puts list.inspect
list['items'].push(add_list_item())

puts list.inspect

print_list(list)

p delete_item
# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:
