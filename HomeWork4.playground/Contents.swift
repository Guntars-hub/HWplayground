import UIKit
//MARK: - HW4
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

var myTeam = "Boys"

let BoysScore = ["firstGame":99, "secondGame":109, "thirdGame":120, "fourthGame":98]
let resultsOfGames = ["Brooklyn Nets":89, "Brooklyn Nets2:":99, "Washington Wizards":117, "Washington Wizards2":122]

for (key, value) in resultsOfGames{
    for (_, value2) in BoysScore{
        print("\(myTeam) against \(key) scored - \(value2):\(value)")
        break
    }
}


/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

var wallet = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(){
    let sum = wallet.reduce(0, +)
    print("\nTotal money in the wallet is: ", sum)
}

calculateCash()


/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else{
        return false
    }
}

isEvenNumber(number: 8)


/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int] {
    let numbersInArray = Array(from...to)
    return numbersInArray
}

var array = createArray(from: 1, to: 100)

print("\nAll number array:", array)


/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for number in array{
    let evenNum = isEvenNumber(number: number)
    var evenNumbersToRemove = 0
    if evenNum == true {
        evenNumbersToRemove = array.firstIndex(of: number)!
        let _ = array.remove(at: evenNumbersToRemove)
    }
}

print("\nOnly odd number array: ", array)
