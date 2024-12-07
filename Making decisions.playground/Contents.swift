import UIKit

let videoLength = 5

if videoLength < 5 {
    "If I blinked, I'd miss it"
}   else if videoLength > 500 {
    "Don't worry, I know a good editor."
} else {
    "That was Lovely"
}

//let bandMemberCount = 4
//let weightPerPerson = 50
//let maximumTripCount = 2
//let gearWeight = 450

//let totalCarryingCapacity = bandMemberCount * weightPerPerson * maximumTripCount
//if gearWeight < totalCarryingCapacity {
  //  "Rock on."
//}   else {
  //  "Everyone quits! Looks like you've got soilo show. "
//}

func bandCanCarryGear(bandMemberCount: Int, gearWeight: Int, bulkiestItemWeight: Int, chanceOfRain: Double) -> Bool {
    
    let maximumTripCount = 2
    let weightPerPerson = 50
    let totalCarryingCapacity = bandMemberCount * weightPerPerson * maximumTripCount
    return gearWeight < totalCarryingCapacity && (chanceOfRain < 0.1 || bulkiestItemWeight < 80)
}

if bandCanCarryGear(bandMemberCount: 5, gearWeight: 650, bulkiestItemWeight: 60, chanceOfRain: 0.05){
    "Rock on."
} else {
    "Everyone quits! Looks like you've got a solo show."
}


let bandMemberCount = 6
let candyCount = 79
if candyCount % bandMemberCount == 0 {
    "Rock on."
}  else {
    "Everyone quits! This is unacceptable"
}

func isCandyAmountAcceptable(bandMemberCount: Int, candyCount: Int) -> Bool {
    return candyCount % bandMemberCount == 0
}

if isCandyAmountAcceptable(bandMemberCount: bandMemberCount, candyCount: candyCount) {
    "Rock on."
} else {
    "Everyone quits! This is unacceptable!"
}

let a = 20
let b = 30
let c = 20

if a == c {
    print("a and c are the same")
}
if a < b {
    print("b is ahead of a")
}
if b>a {
    print("a is not winning against b")
}

if a <= c {
    print("a is either losing to or tied with C")
}

let secretWord = "banana"
let guess = "apple"

if secretWord == guess {
    print("Your guess is right")
} else {
    print("Your guess is wrong")
}

let grade = 47

if grade < 70 {
    print("You got an F...")
}
if 70 <= grade && grade < 80{
    print("You got a C.")
}
if grade >= 80 && grade < 90 {
    print("You got a B")
}
if grade >= 90 {
    print("You got an A!")
}


func isLeapYear(_ year: Int) -> Bool {
    if year % 4 == 0 {
        print(year, " is a leap year.")
        return true
        
    } else {
        print(year, " is not a leap year.")
        return false
       
    }
}
isLeapYear(2000)
isLeapYear(2019)
