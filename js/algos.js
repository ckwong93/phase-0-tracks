// release 0
var array = ["coke","spirte","diet coke"];
var findLongestWord = function(array){
    var longest = array.reduce(function(a,b){
    return (a.length > b.length) ? a : b;
  });
    return longest;
}
console.log(findLongestWord(array));
