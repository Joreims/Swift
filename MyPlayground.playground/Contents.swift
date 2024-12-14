import UIKit

let chores = ["Vacuuming", "Dusting", "Laundry", "Feed the dragons"]
let minutesPerChore = 10

let numberOfChores = chores.count
let choresTime = numberOfChores * minutesPerChore
print(choresTime)


// without loop

let friends = ["John", "Jane", "Jack", "Jill", "Jake"]
func invite(friend: String){
    print("Hey, \(friend), please come to my party on Friday")
}
invite(friend: friends[0])
invite(friend: friends[1])
invite(friend: friends[2])
invite(friend: friends[3])
invite(friend: friends[4])

for friend in friends {
    let sparklyFriend = "\(friend)"
    print("Hey, \(sparklyFriend), please come to my party on Friday")
}
print("Done, all friends have been invited")


var transitOptions = ["walks", "bus", "drive"]
transitOptions = ["rowboat", "paddle board", "submarine"]

var list = [String]()
list.append("Banana")
list.insert("Apple", at: 0)
list += ["Strawberry", "Plum", "Watermelon"]

var numbers = [0,1,2,3,4]
let someNumber = numbers.remove(at: 2)
numbers
let firstNumber = numbers.removeFirst()
numbers
let lastNumber = numbers.removeLast()
numbers


// \\
var flavors = ["Chocolate", "Vanilla", "Strawberry", "Pistachio", "Rocky Road"]

let firstFlavor = flavors[0]

flavors[0] = "Fudge Ripple"

print(flavors)

let newFirstFlavor = flavors[0]
flavors[3] = "Mint Chocolate Chip"
print(flavors)


let devices = ["Iphone", "iPad", "Ipod", "iMac"]
devices.count

let index = 4

if index < devices.count {
    devices[index]
} else {
    print("Sorry, that's not possible")
}


// Song Tittles // Adding 2 or more at the same time

var singerSongs1: [String] = [
    "Apollo13", "Antes de Ameri", "Si me sobrara el tiempo", "Ameri", // First Singer
]
var singerSongs2: [String] = [
    "Como chilla ella", "No da mas", "Flechazo en el centro"
]

var singerSongs3: [String] = [
    "La_Original", "NAGASAKI", "24_Hs.mp3"
]
var songList = [singerSongs1, singerSongs2, singerSongs3]
print(songList)
// aumentador
let singers = ["Duki", "YSYA", "EmiliaMernes"]
for (index, songs) in songList.enumerated(){
    print("The next singer is \(singers[index])!!!")
    for song in songs{
        print("The next Song is: \(song)!!!")
    }

}
// Delete all songs

singerSongs1.removeAll()
singerSongs2.removeAll()
singerSongs3.removeAll()
songList.removeAll()
print(songList)
