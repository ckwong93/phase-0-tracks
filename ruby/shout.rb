=begin module Shout
	def self.yell_angrily(words)
    words + "!!!" + " :("
  	end

  	def self.yell_happily(words)
  	words + "!!!" + " :)"
  	end
#Similar syntax to defining instance method. Make sure to include "self" otherwise it will not work
end

#in IRB, go to location where shout.rb is saved
#enter the following to prep Shout as a module:
#require_relative "shout"
#Shout.singleton_methods (this shows the methods available for use in the "Shout" module)


#Driver code to declare module methods (type this in irb)
require_relative "shout"
Shout.singleton_methods
Shout.yell_angrily("What the hell")
Shout.yell_happily("Awwwwwyeeaaah")

=end

module Shout
	def shout(words)
		puts "I AM A LOUD PERSON AND LIKE TO SAY: #{words}!!!!"
	end

	def scream(words)
		puts "LOUD NOISESSSSSS!!! #{words} #{words} #{words}!!!"
	end
end


class Guy
	include Shout
end

class Gal
	include Shout
end

loud_guy_1=Guy.new
loud_gal_1=Gal.new

loud_guy_1.shout("SUH DUDE")
loud_gal_1.shout("WHAT'S UP MAH GAL")

loud_guy_1.scream("AYY LMAO")
loud_gal_1.scream("FEELS BAD")