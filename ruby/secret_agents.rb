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


