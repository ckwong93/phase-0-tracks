
  //creating horse colors into an Array
  var color = new Array("blue", "red", "black", "green");
  //creating horse names into an Array
  var name = new Array("Ed", "Thunder", "Black Knight", "Teddy")

  console.log(color.length)
  console.log(name.length)

  //adding new horse color
  color.push('yellow');
  //adding new horse name
  name.push('Whisper');

  console.log(color);
  console.log(name);

function printing_objects(color) {}

  for(var i = 0; i < color.length; i++){
    printing_objects[color[i]] = name[i];
       }

console.log(printing_objects);
