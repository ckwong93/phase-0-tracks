//Release 0: Find the Longest Phrase
//Write a function that takes in an array and returns longest word/phrase in array

//PSEUDOCODE: Loop through each item in array, check length of each and if it is
//greater in length than the previous value, set it equal to variable named "longest_phrase"
//after the looping is done, ouput the longest_phrase variable

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