// release 0

var array = ["coke","spirte","diet coke"];
var findLongestWord = function(array){
    var longest = array.reduce(function(a,b){
    return (a.length > b.length) ? a : b;
  });
    return longest;
}
// driver code
console.log(findLongestWord(array));

// release 1

//Variables for Release 1 function to compare.
var first_name1 = {name: "Anish", age: 31}
var first_name2 = {name: "Pinkesh", age: 26}
var first_name3 = {name: "Jessica", age: 23}
var first_name4 = {name: "Jessica", age: 31}

//Release 1 compares the two objects to find if information matches (true) or if they dont(false)
function KeyValue(name, age){
  for (key in name){
    if (typeof name[key] !== 'function'){
      if (typeof age[key] != 'undefined'){
        if (name[key] == age[key]){
          return true;
        }
      }
    }
  }
  return false;
}

// driver code

console.log(KeyValue(first_name3, first_name4));
console.log(KeyValue(first_name1, first_name2));

// release 2

function randomtest(integerLength){
  var array = [];
  var alpha = 'abcdefghijklmnopqrstuvwxyz';

  if (integerLength != 0) {
    for (var i=0; i < integerLength; i++){
      random = "";
      for (var a=0; a < randomRange(1,10); a++){
        random += alpha[randomRange(0,26)];
      }
      array.push(random);
    }
  }
  return array;
}

function randomRange(min, max){
  return Math.floor(Math.random() *(max) + (min));

}

// driver code

 for (increment = 1; increment <= 10; increment++){
  var random = randomtest(5);
  console.log(increment);
  console.log(random);
  console.log(findLongestWord(random))
}
