#PSEUDOCODE
#1. Create UI interface asking for name, age, # of children, decor, etc 
#2. Save answers using gets.chomp and save it into the Hash
#3. Add data incase the user wants to change any answers
#4. Print hash and exit

client_detail={}
p "Greetings, Please enter your client details, beginning with your name:"
name=gets.chomp.to_s
client_detail[:id]=name

p "Next, enter your age"
age=gets.chomp.to_i
client_detail[:how_old]=age

p "How many children do you have?"
kids=gets.chomp.to_i
client_detail[:children]=kids

p "What decor theme would you like?"
decor=gets.chomp.to_s
client_detail[:theme]=decor
p client_detail


puts "Want to update any information? If so, enter the information you would like to change (name, age, kids, or decor). If nothing needs to be changed, please type 'no' or 'none'"
	info=gets.chomp.to_s
		
	if info =="name"
		p "What you like to revise the name to?"
		name=gets.chomp.to_s
		client_detail[:id] = name
	
	elsif info =="age"
		p "What would you like to revise the age to?"
		age=gets.chomp.to_i
		client_detail[:how_old] = age
	
	elsif info =="kids"
		p "What would you like to revise the number of children to?"
		kids=gets.chomp.to_i
		client_detail[:children] = kids
	
	elsif info =="decor"
		p "What would you like to revise the decor to?"
		decor=gets.chomp.to_s
		client_detail[:theme] = decor
	elsif info =="no" || info =="none"
		p "Great, thanks!"
	else
		p "That is invalid"
	
	end

	client_detail