/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]





// pseudocode
/*
create open object gradebook
make each student name in students array a property of gradebook
assign each the value of a new object
give each student property its own test scores
assign respective students their grades from scores array
assign addScore property to gradebook
addscore accepts name and score as arguments and adds scores to student objects
testScore is a property of each student
addscore pushes scores to values of testScore
create getAverage property in gradebook
create average function that accepts an array of integers and returns the average
getAverage accepts a name and returns the student's score using the average function
*/
// __________________________________________
// Write your code below.
var gradebook = {
//   Joseph: {},
//   Susan: {},
//   William: {},
//   Elizabeth: {},
};

gradebook["Joseph"] = {};
gradebook["Susan"] = {};
gradebook["William"] = {};
gradebook["Elizabeth"] = {};
gradebook["Joseph"]["testScores"] = scores[0];
gradebook["Susan"]["testScores"] = scores[1];
gradebook["William"]["testScores"] = scores[2];
gradebook["Elizabeth"]["testScores"] = scores[3];

gradebook["addScore"] = function(name, score){
    gradebook[name]["testScores"].push(score);
  }

gradebook["getAverage"] = function(name){
    return average(gradebook[name]["testScores"]);
}
  
function average(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++){
    sum += array[i];
   }
  var result = sum / array.length;
  return result;
}



// __________________________________________
// Refactored Solution

var gradebook = {};

for(var i = 0; i < students.length; i++){
  gradebook[students[i]] = {"testScores": scores[i]};
}

gradebook["addScore"] = function(name, score){
    gradebook[name]["testScores"].push(score);
  }

gradebook["getAverage"] = function(name){
    return average(gradebook[name]["testScores"]);
}
  
function average(array){
  return array.reduce(function(a, b){return a+b})/array.length;
}







// __________________________________________
// Reflect
/*
1. What did you learn about adding functions to objects?
  Adding a function doesn't necessarily have to happen within the function's brackets, but
  it can be done separately from a function the same way you can do when trying to manipulate
  an object's properties.
2. How did you iterate over nested arrays in JavaScript?
  We equated each array to the individual students' test scores and iterated over them
  individually.  This seemd to be a lot easier than writing scores[index1][index2]
  over and over.
3. Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  I learned how to use reduce, as it aggregates the information in an array if it's of the
  same data type.





*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)