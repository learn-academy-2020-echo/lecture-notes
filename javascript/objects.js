// Objects 11/6/2020

// primitive data types: string, boolean, number, undefined, null, symbol

// arrays - collections of data [1, 2, 3 [4, 5, 6]].length --> 4
// arrays are technically objects


// Objects - sets of key:value pairs

// { key: "value" }

// can have multiple key:value pairs, comma separated
// { key: "value", key2: "value2", key3: "value3" }

// can be saved as variables
var myObject = { key: "value", key2: "value2", key3: "value3" }
console.log(myObject)

// keys inside an object are data type symbol
// value inside an object can be any data type JavaScript recognizes


var breakfastItems = { item1: "eggs", item2: "bacon", item3: "toast" }
// dot notation
console.log(breakfastItems.item1, breakfastItems.item2)


// nested object
var breakfastItems = {
  item1: "eggs",
  item2: "bacon",
  item3: "toast",
  item4: {
    fruit1: "banana",
    fruit2: "blueberry",
    fruit3: "strawberry"
  }
}


// this works
console.log(breakfastItems.item4.fruit2)
// this returns undefined
// console.log(breakfastItems.fruit2)
// this returnd the full fruit object
console.log(breakfastItems.item4.fruit1, breakfastItems.item4.fruit2)


// destructuring - assigning the pathway to the key so it can be referenced on its own
console.log(breakfastItems.item4.fruit1)
console.log(fruit1)

// destructuing one key out of a nested object
let { fruit1 } = breakfastItems.item4
console.log(fruit1)

// destructuring multiple keys out of a nested object
let { fruit1, fruit2, fruit3 } = breakfastItems.item4
console.log(fruit1, fruit2, fruit3)



// Methods

// Methods are functions that belong to an object
// Objects can contain static informtaion (data) and functions/methods (behavior)
// Objects are the intersection between data and behavior

// this - references the object when you are in the scope of said object

var numsObj = {
  num1: 5,
  num2: 10,
  num3: 15,
  addUp: function(){
    return this.num1 + this.num2 + this.num3
  }
}
// logging static data
console.log(numsObj.num1)
// loggin the output of a method, or behavior
console.log(numsObj.addUp())

// alternative way to define a function
// function myFunction(){
//   return "Here is my function"
// }
// console.log(myFunction())

// this deos the same thing most of the time, slightly different scope
// myFunction = () => {
//   return "Here is my function"
// }
// console.log(myFunction())


var cashMoney = [
  { worth: 1, person: "George" },
  { worth: 5, person: "Abe" },
  { worth: 10, person: "Alex" },
  { worth: 20, person: "Andrew" }
]
// console.log(cashMoney.length) --> 4

// this does not work
// console.log(cashMoney.person) --> undefined

// first step, looking at each iteration
const bios = (array) => {
  array.map(value => {
    console.log(value)
  })
}
console.log(bios(cashMoney))

// second step, looking at the value and index of each iteration
const bios = (array) => {
  array.map((value, index) => {
    console.log(value, index)
  })
}
console.log(bios(cashMoney))

// third step, looking at the values of each key
const bios = (array) => {
  array.map((value, index) => {
    console.log(value.person, value.worth)
  })
}
console.log(bios(cashMoney))

// function call
// bios()

// passing in the data
// bios(cashMoney)

// same thing as doing this
// bios([
//   {worth: 1, person: "George"},
//   {worth: 5, person: "Abe"},
//   {worth: 10, person: "Alex"},
//   {worth: 20, person: "Andrew"}
// ])

// fourth step, suing string iterpolation and adding returns
const bios = (array) => {
  return array.map(value => {
    return `Good ol' ${value.person} is on the ${value.worth} dollar bill.`
  })
}
console.log(bios(cashMoney))

// string iterpolation - creating a string using backticks, ${} escape into javascript


// Sidebar - bracket notation and keys as strings

var person = {
  firstName: "Sherlock",
  lastName: "Holmes"
}
// dot notation
console.log(person.firstName)
// bracket notation, does the same thing, just older syntax
console.log(person["firstName"])

// keys as a string, works the same just an older syntax
var person = {
  "firstName": "Sherlock",
  "lastName": "Holmes"
}
// dot notation
console.log(person.firstName)
// bracket notation, does the same thing, just older syntax
console.log(person["firstName"])
