
def encrypt(hello)
  index = 0
  while index < hello.length
    puts hello[index].next
    index += 1
  end

end

def decrypt(hello)
  index = 0
  while index < hello.length
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    word = hello[index]
    num = alphabet.index(word)
    num2 = num - 1
    puts alphabet[num2]
    index += 1
  end
end
puts "Would you like to decrypt (d) or encrypt (e) a password?"
user_input = gets.chomp.to_s
puts "Enter password"
password = gets.chomp.to_s

if user_input == "e"
  puts "encrypted #{encrypt(password)}"
elsif user_input == "d"
  puts "decrypted #{decrypt(password)}"
end
