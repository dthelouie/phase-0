 // Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {
  name: "Adam",
  spouse: terah,
}
terah.spouse = adam
terah.weight = 125
terah.eyeColor = undefined
terah.children = {
  carson: {
    name: "Carson"
  },
  carter: {
    name: "Carter"
  },
  colton: {
    name: "Colton"
  }
}
adam.children = terah.children

console.log(terah)




// __________________________________________
// Reflection: Use the reflection guidelines
// 1. What tests did you have trouble passing? What did you do to make it pass? Why did that work?
//  I had trouble passing the children into the terah object, and equating the children of the adam
//  object to terah.children.  For the children test, I was treating them like individual variables
//  when I should have been treating them like properties.  Once I started doing that, it worked because
//  they are properties of the children property.  For the adam.children test, I had bunched up the line,
//  "adam.children = terah.children", and it wasn't working.  I moved it to below where the children
//  had been declared, and it started working because the children weren't declared when I had equated
//  adam.children to terah.children, and was showing up as undefined by the end of the block.
//
// 2. How difficult was it to add and delete properties outside of the object itself?
//  I didn't find it hard at all, as adding and deleting properties was like using an attribute
//  modifier like we did when making Ruby classes.  
//
// 3. What did you learn about manipulating objects in this challenge?
//  Objects can store and refer to other objects.  They can also be modified.


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)