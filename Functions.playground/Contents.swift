import UIKit

func test() {
    print("Hello")
    let item = ("Cookies")
    print(item)
}

func test2(){
    print("Welcome to Swift")
    test()
}
func rowTheBear(){
    print("Run, run, run your little bear is here")
    print("It's Freddy Fazbear")
}
func verseOne(){
    rowTheBear()
    FredDream()
}

func verseTwo(){
    rowTheBear()
    print("'cause I'm a little teddy")
    print("I heard that you killed so many")
}

func verseThree(){
    rowTheBear()
    print("That's not true, because I'm a little teddy")
}

func FredDream(){
    print("Freddy, Freddy, Freddy")
    print("Stop, stop why are you scary?")
}

func breatheBetweenVerses(){
    print("   '    ")
}
verseOne()
breatheBetweenVerses()
verseTwo()
breatheBetweenVerses()
verseThree()
