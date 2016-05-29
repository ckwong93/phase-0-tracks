
//Define a function that takes in a string and outputs its reverse
//Set an index = to 0 and store a emtpy string
//Loop through the index and call each index value until you reach the end of the string
//This will store each value into the string and return a reversed string
function reverse(str) {

	str = str.split("")
  str = str.reverse();
	str = str.join("")

  return str;

}
console.log(reverse("hello"))
