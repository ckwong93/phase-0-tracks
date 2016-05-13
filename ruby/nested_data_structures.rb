
whole_fridge = {

refridgerator: {
  "Shelf 1" => [
    "Milk",
    "Juice",
    "Water Pitcher"
  ],
  "Shelf 2" => [
    "Beer",
    "Take-out Food"
  ],
  "Shelf 3" => [
    "eggs",
    "Bacon",
    "Veggies"
  ],
},


  freezer: {
    "Freezer_shelf 1" => [
      "Pizza",
      "Ice Cream"
    ],
    "Freezer_shelf 2" => [
      "Steak",
      "Chicken",
      "Fish"
    ],

  }


}

p whole_fridge

puts "What items are on shelf 1 in the fridge?"
p whole_fridge[:refridgerator]["Shelf 1"]

puts""

p whole_fridge[:freezer]["Freezer_shelf 2"].reverse

puts ""

p whole_fridge[:refridgerator]["Shelf 2"].delete_at(0)

puts ""

p whole_fridge[:freezer]["Freezer_shelf 1"].push ("Ice Tray")

puts ""

p whole_fridge[:refridgerator]["Shelf 3"].shuffle
