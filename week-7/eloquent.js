// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var age = 23;
age = age + 1
console.log(age)

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var string = "#"
for (var counter = 0; counter < 7; counter++){
  console.log(string)
  string = string + "#"
}

for (var counter = 1; counter <= 100; counter += 1){
  if (counter % 3 == 0 && counter % 5 == 0)
    console.log("FizzBuzz");
	else if (counter % 3 == 0)
      console.log("Fizz");
	else if (counter % 5 == 0)
      console.log("Buzz");
    else
      console.log(counter);
      }

var odd = " # # # #"
var even = "# # # # "
for (var counter = 1; counter <= 8; counter++){
  if (counter % 2 == 1)
    console.log(odd);
  else if (counter % 2 == 0)
    console.log(even);
}
// Functions

// Complete the `minimum` exercise.

function min(val1, val2){
if (val1 < val2)
  return val1;
else
  return val2;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "David Louie"
	favorite_foods: ["Burgers", "Steak", "Pizza"]
	quirk: "Owns a ton of star wars lego sets"
}

// 1. Did you learn anything new about JavaScript or programming in general?
// Loops are housed in brackets which don't require an "end" marker
// Conditions for loops are housed in parenthesis
// 2. Are there any concepts you feel uncomfortable with?
// Learning a new language that could have some sort of major differences from what I already know
// 3. Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// Operators act the same in both languages and have the same syntax, but JavaScript takes infinity 
// into regard, and has notation for objects that aren't numbers (NaN)
// JavaScript also uses type coercion to make sense out of the incorrect use of operators.
// 4. What is an expression?
// Expressions are fragments of code that produce value.
// 5. What is the purpose of semicolons in JavaScript? Are they always required?
// Semicolons are not always required in JavaScript, but they are used to end statements.
// 6. What causes a variable to return undefined?
// A variable will return as undefined when you call a variable that is empty or doesn't exist.
// 7. Write your own variable and do something to it in the eloquent.js file.
// See line 8
// 8. What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// console.log writes the following expressions into the console.  You would use it to visually
// represent your results rather than returning them.  This is similar to the Ruby method "puts"
// 9. Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!". Paste your program into the eloquent.js file.
// prompt("What's your favorite food?")
// alert("That's my favorite too!")
// 10. Describe while and for loops
// While loops look at a condition and if that condition is met, it will run the block within its braces
// until the condition isn't true anymore.  For loops use an initialization, a check, and an update that
// happens every time the loop runs.
// 11. What other similarities or differences between Ruby and JavaScript did you notice in this section?
// Statements are ended with semicolons or ending parenthesis/braces rather than "end" markers.
// Javascript's objects are defined with "var", while you can just declare them in Ruby.
// Javascript uses "else if" instead of Ruby's "elsif"
// 12. Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
// See line 14
// 13. What are the differences between local and global variables in JavaScript?
// Local variables can only be used within functions, and global variables can be used anywhere in a program
// 14. When should you use functions?
// You should use a function when you have a block of code that you will run on multiple objects.
// 15. What is a function declaration?
// A function declaration names the function, takes an argument if necessary, and points it to a 
// block of code that will run if the function is called.
// 16. Complete the minimum exercise in the eloquent.js file.
// See line 42
// 17. What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// Dot notation can be used with valid identifiers, while bracket notation can be used with strings.
// 18. Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
// See line 52
// 19. What is a JavaScript object with a name and value property similar to in Ruby?
// Objects in JavaScript are just like Hashes in Ruby.  They have names that point to other values.

// Reflection
// 1. What are the biggest similarities and differences between JavaScript and Ruby?
// JavaScript and Ruby both use a lot of the same elements, such as if statements and loops,
// but their syntax is pretty different.  Javascript uses parenthesis and semicolons to house its
// statements, while Ruby uses the keyword, "end" to show when its statements and loops has ended.
// 2. Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
// I realized that a lot of these concepts were not just Ruby-specific, but they are also used in other
// languages, like JavaScript.
// 3. How do you feel about diving into JavaScript after reading these chapters?
// I feel like I'll mistakenly write something in Ruby but have to correct myself to write in JavaScript.