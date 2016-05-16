def calculate(int,operator,int2)
		if operator == "+"
			p int + int2
		elsif operator == "-"
			p int - int2
		elsif operator == "*"
			p int * int2
		elsif operator == "/"
			p int / int2
		elsif operator == "%"
			p int % int2
		else
			p "operator is invalid"
	end
end




calculated_hash={}
answer=""

until answer == "done"
	p "Greetings, please enter first integer"
		num1=gets.chomp.to_i

	p "Please enter operator (+,-,*,/)"
		sign=gets.chomp

	p "Please enter last integer"
		num2=gets.chomp.to_i

	p "Here is the answer to your calculation: #{calculate(num1,sign,num2)}"
		equation = num1.to_s+sign.to_s+num2.to_s
		calculated_hash[equation] = calculate(num1,sign,num2)

	p "Want to enter another calculation? If you are finished, type 'done'"
		answer=gets.chomp
end


if answer == "done"
	p "You have calculated #{calculated_hash.length} equations"
	calculated_hash.map { |key,value| p "#{key} = #{value}"  }
end





#calculate(4,"+",5)
#calculate(5,"-",4)
#calculate(5,"*",4)
#calculate(20,"/",5)
