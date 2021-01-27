import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var deposit = 500.0
let rate = 7.5
var profit = 0.0
let period = 5
var totalProfit = 0.0

for _ in 1...period{
    totalProfit = totalProfit + profit
    deposit = deposit + profit
    profit = Double((deposit / 100)) * rate
}
print("Amount of income after \(period) years will be \(String(format:"%.02f", totalProfit)) Eur. My total deposit will be \(String(format:"%.02f", deposit)) Eur !")


/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let intArray = [9, 10, 15, 16, 20]

for evenNumber in intArray{
    if evenNumber % 2 == 0{
        print("My even numbers are: \(evenNumber)")
    }
}


/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

for var counter in 1...100{
    let randomNumber = Int.random(in: 0..<10)
    let answer = 5
    if randomNumber != answer {
        counter += 1
    } else {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let electricPost = 10
let duringDay = 2
let duringNight = -1
var numberOfDays = 0
var travelDistance = 0

while electricPost > travelDistance {
            travelDistance = (duringDay + duringNight) + travelDistance
            numberOfDays += 1
}
print("bug will spend \(numberOfDays) days to reach top of the post")
