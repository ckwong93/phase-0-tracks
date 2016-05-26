//Create array of four colors
var horse_colors = ["red","orange","green","blue"];

//Create array of four names you might give a horse
var horse_names = ["Oskar","Frank","Mufasa","Horsie"];

//Write code that adds another color to color array and another horse to horse array
horse_colors.push("indigo");
horse_names.push("Kyle");

//Driver code to check that new items have been added to respective array
console.log(horse_colors);
console.log(horse_names);


function object_maker(name_array,color_array){
//Create empty object named horse_object
	var horse_object={};
//Loop through each item in horse_names and set it as a key, 
//with its value as its respective position in horse_color array
for (var i=0;i<horse_names.length;i++){
	horse_object[horse_names[i]]=horse_colors[i]
}
	return horse_object;
}

object_maker(horse_names,horse_colors)




//Create a constructor function for a car. Give it a few different properties of 
//various data types, including at least one function. 
//Demonstrate that your function works by creating a few cars with it.

function Car(make,model,horsepower){
	console.log("Car-of-the-year in making",this);
	this.make = make;
	this.model = model;
	this.horsepower = horsepower;
	this.vroom = function() {console.log("VROOOM, this car has " + this.horsepower + " horsepower!")}
	console.log("Test your car-of-the-year")
}

//Creates GTI as a function
var GTI = new Car("VW","GTI","210")
console.log(GTI)
GTI.vroom()
console.log("----------------")
//Create FRS as a function
var FRS =  new Car("Scion","FRS","200")
console.log(FRS)
FRS.vroom()
console.log("----------------")
//Creates STI as a function
var STI = new Car("Subaru","STI","305")
console.log(STI)
STI.vroom()
console.log("----------------")

console.log("First places goes to STI, with " + STI.horsepower +" horsepower")
console.log("Second place goes to GTI, with " + GTI.horsepower +" horsepower")
console.log("Third place goes to FRS, with " + FRS.horsepower + " horsepower")