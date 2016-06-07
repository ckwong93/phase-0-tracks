console.log("If you can see this, it is working!")

var photo = document.getElementById("lizard-photo");
photo.style.border = "5px dotted green";
//Uses JS to make border green and dotted

var clickHere = document.createElement("BUTTON");
var buttonText = document.createTextNode("Click Here!")
clickHere.appendChild(buttonText);
document.body.appendChild(clickHere);
//Creates button with text "click here"
//Source:http://www.w3schools.com/jsref/met_document_createelement.asp

function hidePic() {
	var photo = document.getElementById("lizard-photo");
	photo.hidden = true;
}
//Create hide pic function where if it is called, lizard pic will disappear

function showPic() {
	var photo = document.getElementById("lizard-photo");
	photo.hidden = false;
}
//Create show pic function where if it is called, lizard pic will re-appear

var buttons = document.getElementsByTagName("button");
var blend = buttons[0];
var reveal = buttons[1];
//Sets buttons from page as variables so we can add event listeners to each button


blend.addEventListener("click",hidePic);
reveal.addEventListener("click",showPic);
//first one hides pic if we click first button
//second reveals pic if we click second button

function addPic() {
	var pic = document.createElement("IMG");
	pic.setAttribute("src","chameleon.png");
	pic.setAttribute("width","225");
	pic.setAttribute("height","auto")
	document.body.appendChild(pic);
}
//Create function that adds lizard photo when called

clickHere.addEventListener("click",addPic);
//Event listener that adds a lizard photo when we click the "click here" button

