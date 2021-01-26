//HomeWork2
import UIKit
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var firstFloatVariable: Float = 3.14
var secondFloatVariable: Float = 42.0

var doubleVariable: Double = Double(firstFloatVariable) + Double(secondFloatVariable)

print("Sum of Float variables is", doubleVariable)


/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne = 13
var numberTwo = 7
let divided = numberOne / numberTwo
let remainder = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(divided), the remainder is \(remainder).")


/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var macBookPrice = 1000
var quantity = 9

if quantity < 5 && quantity > 0{
    let totalSum = quantity * macBookPrice
    print("new: \(quantity) MacBook Pro with the price of: \(macBookPrice) EUR, will cost you: \(totalSum) Eur")
} else if quantity < 10 {
    macBookPrice = 900
    let totalSum = quantity * macBookPrice
    print("new: \(quantity) MacBook Pro with the price of: \(macBookPrice) EUR, will cost you: \(totalSum) Eur")
} else if quantity >= 10 {
    macBookPrice = 850
    let totalSum = quantity * macBookPrice
    print("new: \(quantity) MacBook Pro with the price of: \(macBookPrice) EUR, will cost you: \(totalSum) Eur")
}


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge: String? = "33a"
var converToInt = Int(userInputAge!)

if Int(userInputAge!) == nil {
print ("userInputAge does not contain some value")
} else {
    print("userInputAge contains",userInputAge)
}

    
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

extension Date {
    var years: Int { Calendar.current.dateComponents([.year], from: self, to: Date()).year! }
    var months: Int {Calendar.current.dateComponents([.month], from: self, to: Date()).month!}
    var days: Int {Calendar.current.dateComponents([.day], from: self, to: Date()).day!}
}

let monthOfBirth = 6
let birthday = DateComponents(calendar: .current, year: 1999, month: 6, day: 12).date!
let totalYearsFromBirth = birthday.years
let totalMonthFromBirth = birthday.months
let totalDaysFromBirth = birthday.days

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

switch monthOfBirth {
case 1...3:
    print("I was born in the first quarter")
case 4...6:
    print("I was born in the second quarter")
case 7...9:
    print("I was born in the third quarter")
case 10...12:
    print("I was born in the fourth quarter")
default:
    break
}
