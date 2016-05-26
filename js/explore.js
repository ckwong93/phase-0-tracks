//Define a function that takes in a string and outputs its reverse
//Set an index = to 0 and store a emtpy string
//Loop through the index and call each index value until you reach the end of the string
//This will store each value into the string and return a reversed string

function reverse(string){
	var reversedString="";
	var newString=reversedString;
for (var i = 0; i < string.length; i++ ) {
	reversedString=string[i]+reversedString;
}
console.log (reversedString);
}

//driver code to test reverse function
reverse("hello")

//sets variable identifier = "Calvin"
var identifier = "Calvin";

//If identifier is equal to "Calvin", will return "hello my name is calvin" reversed
if (identifier=="Calvin"){
	reverse("hello my name is calvin");
}

//If identifier is anything else, will return "Uhhh, your name isn't Calvin!?"
//To test, replace "Calvin" in line 22 with any other word
else {
	console.log("Uhhhh, your name isn't Calvin!?")
}