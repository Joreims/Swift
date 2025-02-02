import Foundation
let ball = OvalShape(width: 40, height: 40)
let funnelPoints = [
    Point(x: 0, y: 50),
    Point(x: 80, y: 50),
    Point(x: 60, y: 0),
    Point(x: 20, y:0)
]
let funnel = PolygonShape(points: funnelPoints)
let targetPoints = [
    Point(x: 10, y: 0),
    Point(x: 0, y: 10),
    Point(x: 10 , y: 20),
    Point(x: 20, y: 10)
]
let target = PolygonShape(points: targetPoints)

var barriers: [Shape] = []
var targets: [Shape] = []
/*
The setup() function is called once when the app launches. Without it, your app won't compile.
Use it to set up and start your app.

You can create as many other functions as you want, and declare variables and constants,
at the top level of the file (outside any function). You can't write any other kind of code,
for example if statements and for loops, at the top level; they have to be written inside
of a function.
*/

fileprivate func setupBall() {
    ball.position = Point(x: 250, y: 400)
    scene.add(ball)
    ball.hasPhysics = true
    ball.fillColor = .blue
    ball.onCollision = ballColided(with:)
    ball.isDraggable = false
    scene.trackShape(ball)
    ball.onExitedScene = ballExitedScene
    ball.onTapped = resetGame
    ball.bounciness = 0.6
    
}

fileprivate func addBarrier(at position: Point, width: Double, height: Double, angle: Double) {
    let barrierPoints = [
        Point(x: 0, y: 0),
        Point(x: 0, y: height),
        Point(x: width, y: height),
        Point(x: width, y: 0)
    ]
    let barrier = PolygonShape(points: barrierPoints)
    barriers.append(barrier)
    barrier.position = position
    barrier.hasPhysics = true
    scene.add(barrier)
    barrier.isImmobile = true
    barrier.fillColor = .black
    barrier.isDraggable = false
    barrier.angle = angle
}

fileprivate func setupFunnel() {
    
    funnel.position = Point(x:200, y: scene.height - 25)
    scene.add(funnel)
    funnel.onTapped = dropBall
    funnel.fillColor = .gray
    funnel.isDraggable = false
    
}

func ballColided(with otherShape: Shape){
    if otherShape.name != "target"{return}
    otherShape.fillColor = .green
}

func setup() {
    // Add a circle-ball to the scene
    setupBall()
    
    // Add a barrier to th e scene
    addBarrier(at: Point(x: 200, y: 150), width: 80, height: 25, angle: 0.1)
    
    // Add a funnel to the scene
    setupFunnel()
    
    //Add a target shape to the scene
    addTarget(at: Point(x: 150, y: 400))
    
    //Reset the game
    resetGame()
    
    //Challenge
    scene.onShapeMoved = printPosition(of:)
    
}

func addTarget(at position: Point){
    let targetPoints = [
        Point(x: 10, y: 0),
        Point(x: 0, y: 10),
        Point(x: 10, y: 20),
        Point(x: 20, y: 10)
    ]
    let target = PolygonShape(points: targetPoints)
    targets.append(target)
    target.position = position
    target.hasPhysics = true
    target.isImmobile = true
    target.isImpermeable = false
    target.fillColor = .yellow
    target.name = "target"
    // target.isDraggable = false
    scene.add(target)
}

func dropBall() {
    ball.position = funnel.position
    ball.stopAllMotion()
    for barrier in barriers {
        barrier.isDraggable = false
    }
    
}

func ballExitedScene() {
    for barrier in barriers {
        barrier.isDraggable = true
    }
}

func resetGame(){
    ball.position = Point(x: 0, y: -80)
}

func printPosition(of shape: Shape){
    print(shape.position)
}
