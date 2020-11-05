// Higher Order Functions 11/5/2020


// Built in methods - named code functionality that gets added to a language, gives devs more tools and makes coding shorter and easier

// .toUpperCase() - string method, get an error if it is not applied to a string
// .push() - array method, takes an argument

// All built in methods are designed to work on a particular data type

// Iteration - repeated execution of a code block a particular number of times or until a condition is met, often performed on arrays

// Higher Order functions are built in methods that are applied to arrays and used for iteration, take a function as argument

// code block
// if(3 < 7 - I am an evaluation){
//   do this thing - I am a code block!
// }

// .forEach() - literally does something to every item in an array
// Can have up to three arguments: value, index, array the method was called on

// this is semantically named
// [2, 3, 4, 5].forEach((value, index) => {
//   console.log("a single iteration:", "value:", value * 2, "index:", index)
// })

// here is an example of changing the variable names
// [2, 3, 4, 5].forEach((banana, joe) => {
//   console.log("a single iteration:", "value:", banana * 2, "index:", joe)
// })

// don't do this - it is super confusing! Name your placeholders clearly.
// [2, 3, 4, 5].forEach((index, value) => {
//   console.log("a single iteration:", "value:", value, "index:", index)
// })


// this is just value
// [2, 3, 4, 5].forEach(value => {
//   console.log("a single iteration:", "value:", value * 2)
// })

// this is just index
// [2, 3, 4, 5].forEach((value, index) => {
//   console.log("a single iteration:", "index:", index)
// })

// all three arguments: value, index, array
// [2, 3, 4, 5].forEach((value, index, array) => {
//   console.log("a single iteration:", "index:", index, "array:", array)
// })


// one level of abstraction, applying the built in method to a variable
// var myArray = [2, 3, 4, 5]
//
// myArray.forEach(value => {
//   console.log("a single iteration:", "value:", value * 2)
// })

// var myString = "hello"
// console.log(myString.toUpperCase())
// --> "HELLO"

// .map()

// .filter()
