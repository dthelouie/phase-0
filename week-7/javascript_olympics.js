 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
athletes = function(person, event, result){
	var athlete = {
		name: person,
		event: event,
		win: result
	};
	if (athlete.win == true){
		console.log([person] + " has won the " + [event] + "!");
	};
}

athletes("guy", "thing", true)

// Jumble your words
reverse = function(string){
	for (var i = 0; i < string.length; i++) {
		var arr = string.split("");
		string2 = arr.reverse("").join("")
	};
	console.log(string2);
};

reverse("things and stuff")

// 2,4,6,8
even = function(arr){
	var arr2 = [];
	for (var i = 0; i < arr.length; i++) {
		if (arr[i] % 2 == 0){
			arr2.push(arr[i]);
		};
	};
	console.log(arr2);
};

even([1,7,125,3,8,12,5,18])

// "We built this city"
function Athlete(name, age, sport, quote){
	this.name = name;
	this.age = age;
	this.sport = sport;
	this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
1. What JavaScript knowledge did you solidify in this challenge?
	I solidified my knowledge of objects and constructor functions, and what their differences are.
2. What are constructor functions?
	Constructor functions are different from literal objects in their propery definition.
	In literal objects, you define properties with variables that can be called with
	"object.property" but in constructor functions, you define them with "this.property".
3. How are constructors different from Ruby classes (in your research)?
	Constructors are different from Ruby classes in the way that they assign variables and
	values.  Ruby classes can modify values by calling them with "variable.property", and only
	if you have an attribute accessor associated with that property.  In constructors, you have
	your variables defined the same way you pass arguments through a function.
*/