	
=begin 
Release 1: Use each, map and map!
Write your own method that take a block. Your method should print out a status message before and after 
running the block. Your block doesn't have to do anything fancy -- it can just print out several of its 
own parameters.
=end

def nba_matchup
	team1="Warriors"
	team2="Spurs/Thunder"
	team3="Cavaliers"
	team4="Heat/Raptors"

	puts "Here is the matchup for the Western Conference Finals:"
	yield(team1,team2)

	puts "Here is the matchup for the Eastern Conference Finals:"
	yield(team3,team4)
end

nba_matchup {|team1,team2| puts "The #{team1} will play #{team2}"}


#Here is another way of inputting the above data
=begin
def nba_matchup
	puts "Here is the matchup for the Western Conference Finals:"
	yield("Warriors","Spurs/Thunder")

	puts "Here is the matchup for the Eastern Conference Finals:"
	yield("Cavaliers","Heat/Raptors")
end

nba_matchup {|team1,team2| puts "The #{team1} will play #{team2}"}
=end


#Do the thing
nba_fan_array = ["Curry","Thompson","Barnes","Green","Bogut"]
nba_fan_hash = {:MVP => "Curry", :MIP => "McCollum", :DPY => "Leonard", :SMY => "Crawford"}

#Iterate using .each for array
nba_fan_array.each{|x| puts "#{x} plays for the Warriors! Wooooooh!"}
p nba_fan_array

#Iterate using .map! for array
nba_fan_array.map!{|x| x.reverse.upcase}
p nba_fan_array

#Iterate using .each for hash
nba_fan_hash.each{|award,player| puts "#{award} was awarded to #{player} in 2016"}


#Release 2: Use the Documentation

=begin 
1. A method that iterates through the items, deleting any that meet a certain condition 
(for example, deleting any numbers that are less than 5).
=end

nums=[1,2,3,4,5,6,7,8,9,10]
def over_five(array)
	array.delete_if {|x| x<5}
end
over_five(nums)
#Outputs [5,6,7,8,9,10]


=begin
2. A method that filters a data structure for only items that do satisfy a certain condition 
(for example, keeping any numbers that are less than 5).
=end

def under_five(array)
	array.take_while {|x| x<5}
end
under_five(nums)
#Outputs [1,2,3,4]


=begin
3.A different method that filters a data structure for only items satisfying a certain condition 
-- Ruby offers several options!
=end

def is_even(array)
	array.select {|x| x.even?}
end
is_even(nums)
#Outputs [2,4,6,8,10]
