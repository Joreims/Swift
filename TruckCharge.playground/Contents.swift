import UIKit

// Truck Loading Guide
let orangeWeight = 100
let watermelonWeight = 200
let orangeCount = 14
let watermelonCount = 3
let totalOrange = orangeCount * orangeWeight
let totalWatermelon = watermelonCount * watermelonWeight
let totalLoad = totalOrange + totalWatermelon
let eachSide = totalLoad/2
let left = eachSide / orangeWeight
let right = orangeCount - left


print("Left side: \(left)")
print("Right side: \(right)")
print(eachSide)
print(totalLoad)

