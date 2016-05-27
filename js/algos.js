function longest(array){
	longest_phrase=""
	for (var i=0; i<array.length; i++){
		if (array[i].length > longest_phrase.length){
			longest_phrase = array[i]
		}
	} return longest_phrase
}

//Driver code to test above function
var my_cool_array=["which","word","is","the","longest"]
longest(my_cool_array)





//Release 1: Find a Key-Value Match
//Write a function that takes two objects and checks to see if the objects share 
//at least one key-value pair.

//PSEUDOCODE: Loop through each item in the object and see if any of the key-value
//pairs match. If they do match, return true. Otherwise, by default return false
//test using looping through objects(was mentioned in last module)

//Key-value iterate
function match(firstObject,secondObject){

	for (var key in firstObject){

		if (firstObject[key] == secondObject[key])
			return true
		}
			return false
	}
//for (var key....) loops through an object. Returns false by default, but will return
//true if the parameter works. This will iterate through every instance, so does not  matter
//if one object has more key-value pairs than the other







//Release 2: Generate Random Test Data
//Write a function that takes in integer for length, and builds and returns an array
//of strings of the given length. Add driver code that does the following 10 times:
//generate an array, print the array, and feeds array to "longest word" function, and prints the result


//PSEUDOCODE: create a function that takes an integer and returns an array with 'integer' # of words
//Will need to create two functions. First function will create a random word with 1-10 characters.
//Second function will perform the first function "n" times and add it to the array
//The end result will be a function that take in an integer and returns an array with 'integer' items, which all have randomly
//1-10 characters in each word.

function random_word_generator(integer){

	var random_arr=[];

	for (var i=0; i < integer; i++){
		var random_words = random_letter(1,10);
			random_arr.push(random_words);
//will create random words and add to the random_arr array when finished. To be completed "integer" times
	} 
	return random_arr
}


function random_letter(first_int,last_int){

	var alphabet="abcdefghijklmnopqrstuvwxyz";
	length = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
	var random_array=[];

//length will generate a random number from 1 - 10 inclusive and will be used as a parameter below
	
	for (var i = 0; i < length; i++){

		letter_number = Math.floor(Math.random() * 26);
		random_array.push(alphabet[letter_number]);

//letter_number is a randomly generated number from 1-26. The selected number will then be
//translated to a character in the alphabet string, which will be added to the random_array
//the random_array below will be joined so that the individual letters will become a string	
	
	}
	return random_array.join("");
}



//Release 2: Part 2
//Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function,
//and prints the result.

for (var i=0; i<10; i++){
	var new_arr = random_word_generator(3);
//new_arr is set to save result from random word function into an array
	 console.log(new_arr);
	 console.log("Here is your logest word:  " + longest(new_arr));
	 console.log("------------------------------------")
}
//line 102 will look at the new_arr and spit out the longest word
//loop will occur 10 times and spit out the longest word every time


//RESOURCE USED AS AID TO RANDOM GENERATOR SYNTAX
//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random