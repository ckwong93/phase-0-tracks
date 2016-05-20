#PSEUDOCODE
#1.define a method such that it takes in a string and 
#as long as the index is less than the length of the string,
#return the next character
#2.Same as first, but going backwards. Use alphabet string that was given
#find position of the string character in the alphabet and return the letter
#of 1 character before it








def encrypt(string)
	idx=0
	while idx<string.length
		if string[idx]=="z"
			string[idx]=string[idx].next.chop
		else
			string[idx]=string[idx].next
		end
		idx+=1
	end
	return string
end

def decrypt(string)
alphabet="abcdefghijklmnopqrstuvwxyz"
idx=0
	while idx<string.length
		 string[idx]= alphabet[alphabet.index(string[idx])-1]
		 idx+=1
	end
	return string
end

decrypt(encrypt("swordfish"))

print "Would you like to encrypt or decrypt password??"
answer=gets.chomp.to_s
print "Enter password"
password=gets.chomp.to_s

if answer=="encrypt"
puts "Here it is encrypted : #{encrypt(password)}"
elsif answer=="decrypt"
puts "Here it is decrypted : #{decrypt(password)}"
end
print "Goodbye dude"


