// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Lucas Nagle.

// Pseudocode
/* #define the function, that takes a number
CONVERT integer to string
SPLIT string into array
ITERATE over array
REVERSE array
PASS array elements into new string
ADD comma every 3 characters
*/ 
// Initial Solution
function separateComma(number) {
  var arr = []
  var fin = ""
  var n = number.toString();
  arr = n.split('')
  console.log(fin);
  arr.reverse();
  console.log(fin);
   for (var i = 0; i < n.length; i++){
    fin = arr[i] +fin;
    if ((i+1) % 3 == 0){ 
      fin = "," + fin ;
    }
  }
  if (fin[0] == ",") {
       fin = fin.substr(1);
  }
  return fin
}


// Refactored Solution
function separateComma(number) {
  var arr = [], fin = "", n = number.toString();
  arr = n.split('')
  arr.reverse();
   for (var i = 0; i < n.length; i++){
    fin = arr[i] + fin;
    if ((i+1) % 3 == 0){ 
      fin = "," + fin;
    }
  }
  if (fin[0] == ",") {
       fin = fin.substr(1);
  }
  return fin
}


// Your Own Tests (OPTIONAL)
var test = 123456789
console.log(separateComma(test))

// Reflection
/*
    1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
		Our approach was pretty similar to our Ruby solutions, but we were still getting used to the
		syntax of a new language.
    2, What did you learn about iterating over arrays in JavaScript?
		Using a "for" loop is definitely neater than while in this case, as we are adding to the index
		every time around the loop.  Otherwise, it was generally the same as in Ruby.
    3. What was different about solving this problem in JavaScript?
		Finding which methods were specific to each object type was definitely harder.  We tried to use
		array-specific methods on strings, and vice-versa, but we found that they were object specific.
    4. What built-in methods did you find to incorporate in your refactored solution?
    	We used split and reverse, which we used in Ruby, but we also used substr, to display the string
    	from index 1 and on in the case that our function produced a string whose first index was a comma.
    	
*/