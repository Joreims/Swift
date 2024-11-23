import UIKit

//let string = 42
//let anotherString = string

//let result = string + anotherString
//print(result)
// annotatedDouble is a Double, even though there is no decimal pint, because of the type annotation
let annotatedDouble: Double = 20
//inferredDouble is a Double because it is written with a decimal point
let inferredDouble = 0.5

let result = inferredDouble * annotatedDouble
print(result)
let result2 = result * 0.5
print(result2)


//TrainingShoe

let Size = 36
let Brand = "Adidas"
let price = 100

// Calculate the circumference of a Circle with a diameter of 2
let pi =  3.14159265359
let diameter: Double = 2
let circumference: Double = (2 * diameter * pi)
print(circumference)
