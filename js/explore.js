
//Define a function that takes in a string and outputs its reverse
//Set an index = to 0 and store a emtpy string
//Loop through the index and call each index value until you reach the end of the string
//This will store each value into the string and return a reversed string


function reverse(str) {
// spliting the string
	str = str.split("")
// reversing the string
  str = str.reverse();
// joing the string after splitting and reversing the string
	str = str.join("")

  return str;

}
//driver code
console.log(reverse("hello"))

function multiply(x, y) {
   return x * y;
}
console.log(multiply(3, 3))
