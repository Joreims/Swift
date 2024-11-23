import UIKit

//func helloName(){
//    let name = "Jorge"
//    print("Hello " + name)
//}
//helloName()

//func hello(name: String){
 //   print("Hello " + name)
//}
//hello(name: "Jorge")
//func favorite(food: String){
    //let food = "cheese"
    //print("My favorite food is " + food)

//}
//print; favorite(food: "cheese")

func hello(firstName: String, lastName: String){
    print("Hello \(firstName) \(lastName)")
}
hello(firstName: "Jorge", lastName: "Garcia")
hello(firstName: "Ilan", lastName: "Ruiz")


func printFavorite(categoryOfThing: String, favorite: String){
    let categoryOfThing = "food"
    let favorite = "cheese"
    print("My favorite \(categoryOfThing) is \(favorite)")
}
printFavorite(categoryOfThing: "food", favorite: "Pizza")


func spaceAvailableMessage(eachVideoDuration: Int, numberOfVideo: Int)->String{
    let currentSpace = 10000
    let megabytesPerVideoSecond = 3
    let spaceAvailable = currentSpace - eachVideoDuration * numberOfVideo * megabytesPerVideoSecond
    return "If your \(numberOfVideo) videos are \(eachVideoDuration) seconds each, you'll \(spaceAvailable) MBs remaining"
    
}
spaceAvailableMessage(eachVideoDuration: 10, numberOfVideo: 50)


let desiredVideoDuration = 40
let holidayVideoCount = 100
let videoMessage = spaceAvailableMessage(eachVideoDuration: desiredVideoDuration, numberOfVideo: holidayVideoCount)
let namedVideoMessage = "Hey Micah! \(videoMessage)"
print(namedVideoMessage)

// Example returning values
func Name(name: String, id: String) -> String{
    let student = name + id
    return student
}
let namedStudent = Name(name: "Jorge your id is: ", id: "4B2F")
print(namedStudent)

// Example favorite things
func favoriteThings(_ favoriteFood: String, _ favoriteSport: String)->String{
    let name = "Jorge"
    let favoriteFood = "Pizza"
    let favoriteSport = "Soccer"
    return "Hello, my name is \(name), my favorite food is \(favoriteFood) and my favorite sport is \(favoriteSport)"
}
let senteces = (favoriteThings("Pizza", "Soccer"))
print (senteces)

// List
func listByAdding(item: String, toList: String)->String{
    let newList = toList + "\n" + item
    return newList
}
var list = ""
var numberOfitems = 0
list = listByAdding(item: "Eggs", toList: list)
numberOfitems += 1
list = listByAdding(item: "Cheese", toList: list)
numberOfitems += 1
list = listByAdding(item: "Bread", toList: list)
numberOfitems += 1
list = listByAdding(item: "Milk", toList: list)
numberOfitems += 1
print("Your shopping list contains \(numberOfitems) items: \(list)")


// Naming

func printHello(to name: String){
    print("Hello " + name)
    printGradeExam(to: 90)
}
printHello(to: "Jorge")


func printGradeExam(to: Int){
    print("Your grade was: \(to)")
}

func printHelloTo(_ name: String){
    print("Hello " + name)
}
printHelloTo("Jorge")
printHelloTo("Panti")

func song(_ verb: String, _ noun: String)
{
    print("\(verb), \(verb), \(verb) your \(noun)")
}
let line = song("Row", "Boat")
print(line)


