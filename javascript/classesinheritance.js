// data and behavior

// blueprint
class HomeLoan {
  //            2
  constructor(name, loan, date=3) {
    //            3
    this.name = name
    this.payDate = date
    this.debt = loan
  }

  makePayment() {
    this.debt -= 1000
  }

  missPayment() {
    this.debt += 200
  }
}

// single instance of my class
//                                  1
var rachaelsHouse = new HomeLoan("Rachael", 15, 200000)
console.log(rachaelsHouse);
rachaelsHouse.makePayment()
rachaelsHouse.makePayment()
rachaelsHouse.makePayment()
rachaelsHouse.makePayment()
rachaelsHouse.makePayment()
rachaelsHouse.missPayment()
console.log(rachaelsHouse.debt);

// classes are reusable
var andeesHouse = new HomeLoan("Andee", 400000)
console.log(andeesHouse);
andeesHouse.missPayment()
andeesHouse.missPayment()
andeesHouse.missPayment()
andeesHouse.missPayment()
andeesHouse.missPayment()
andeesHouse.missPayment()
console.log(andeesHouse.debt);

var currentLoans = []
currentLoans.push(rachaelsHouse)
currentLoans.push(andeesHouse)
// console.log(currentLoans);

var showInfo = currentLoans.map(value => {
  return `${value.debt} is still owed`
})

console.log(showInfo);

class Person {
  takeOutLoan() {
    this.debt = 1000
  }

  showDebt() {
    return this.debt
  }
}

var me = new Person()
console.log(me);
me.takeOutLoan()
console.log(me.debt);
console.log(me);

// ***Class Inheritance*******************************************************

// Parent class
// broad, generic definitions
class Loan {
  // establishes key:value pairs upon creation of an object
  constructor() {
    this.payDate = "1st"
  }

  getInfo() {
    return `Your due date is the ${ this.payDate }.`
  }
}

// Child class
class AutoLoan extends Loan {
  constructor() {
    // passes attributes from the parent to the child
    super()
    this.debt = 10000
    this.interest = 4
  }

  refinance() {
    this.interest = 3
    return "Success! Your rate went down."
  }
}

var myCar = new AutoLoan()
console.log(myCar.interest);
console.log(myCar.getInfo());
console.log(myCar.refinance());
console.log(myCar);
