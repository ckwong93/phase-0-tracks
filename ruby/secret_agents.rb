
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
