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




// .map() - built in method, acts on array for the purpose of iteration, takes a function as an argument, returns an array

// map with value
// var mappedArray = [2, 3, 4, 5].map(value => {
//   return value * 2
// })
// console.log(mappedArray)

// map with value and index
// var mappedArray = [2, 3, 4, 5].map((value, index) => {
//   return index
// })
// console.log(mappedArray)

// determine if the numbers are odd or even
// var mappedArray = [2, 3, 4, 5].map(value => {
//   if(value % 2 === 0){
//     return "even"
//   } else if(value % 2 !== 0){
//     return "odd"
//   } else {
//     return "something went wrong"
//   }
// })
// console.log(mappedArray)

// experimenting with edge cases
// var mappedArray = [-6, -3, 2, 3, 4, 5, "hello"].map(value => {
//   if(value % 2 === 0){
//     return "even"
//   } else if(value % 2 === 1 || value % 2 === -1){
//     return "odd"
//   } else {
//     return "something went wrong"
//   }
// })
// console.log(mappedArray)

// wrap map into a function
// every function must have a return
// return the map function
// const evenOrOdd = (array) => {
//   return array.map(value => {
//     if(value % 2 === 0){
//       return "even"
//     } else {
//       return "odd"
//     }
//   })
// }
//
// console.log(evenOrOdd([2, 3, 4, 5]))

// creating a varibale for the map function and return the variable
const evenOrOdd = (array) => {
  let mappedArray = array.map(value => {
    if(value % 2 === 0){
      return "even"
    } else {
      return "odd"
    }
  })
  return mappedArray
}

console.log(evenOrOdd([2, 3, 4, 5]))
console.log(evenOrOdd([4, 5, 6]))
console.log(evenOrOdd([9, 3, 4, 5]))

// behind the scenes
// const evenOrOdd = ([2, 3, 4, 5]) => {
//   let mappedArray = [2, 3, 4, 5].map(value => {
//     if(value % 2 === 0){
//       return "even"
//     } else {
//       return "odd"
//     }
//   })
//   return mappedArray
// }
//
// console.log(evenOrOdd([2, 3, 4, 5]))
// console.log(evenOrOdd([4, 5, 6]))
// console.log(evenOrOdd([9, 3, 4, 5]))





// .filter() - built in method, acts on arrays as iterator, takes a function as an argument, returns array, built in if/else statement

// return only numbers that are even

var arrayOfNumbers = [2, 3, 4, 5, 6, 7]

const getEvens = (array) => {
  return array.filter(value => {
    return value % 2 === 0
  })
}
console.log(getEvens(arrayOfNumbers))
console.log(getEvens([1, 2, 3, 4, 5]))
