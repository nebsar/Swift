import UIKit

var lat : String = "Nebi Sarikaya"


"Senin \(lat) adin \(lat)"

type(of: lat)

var array : [Any] = ["fg", "gfgf" , 334]

var stringArray = [String]() // or

var StringArray2 : [String] = []

stringArray.append("deneme")

stringArray.append("deneme")

stringArray.append("deneme")

stringArray.append("deneme")

stringArray.append("deneme")

stringArray.append("deneme")


stringArray.removeSubrange(1...2)

stringArray.removeSubrange(ClosedRange(uncheckedBounds: (lower: 1, upper: 2)))


var songs = ["denene", "dddfeg", "dsd ds "]

for i in 0 ..< songs.count{
    print("\(i + 1). song is \(songs[i])")
}

var hasBrain = true
var hasCar = true
var hasMotor = false

var str : String

if hasBrain && hasCar{
    
    str = "good"
    
} else if "" == "" {
    
}

if hasCar || hasMotor {
    str = "super"
}

for i in 0...10 {
    print("\(i) x 10 = \(i * 10)")
}

var str1 = "deneme"

for _ in 1...5 {
    str1 += " nedir"
}

var dict : [String : Int] = ["bir": 1, "iki": 2]

print(dict["bir"]!)

var val = 3

switch val {
case 1...2:
    print("noldu")
    print("neden")
case 3...5:
    print("3 5 lafı olmaz")
    print("hadi bakalım işine")
default:
    print("default")
}


func deneme(input: String) -> String{
    
    print(input)
    
    return input
}

deneme(input: "deneme")

func intExt(myString str: String){
    print("deneme has \(str.count) letters")
    
}

intExt(myString: "deneme")

// _ sayesinde fonksiyona myString: "deneme" e gerek kalmadan olarak argman gönderebiliyoruz
func strOnly(_ str:String){
    print("deneme has \(str.count) letters")
}

strOnly("deneme")

/******************** OPTIONALS  1***************************/

var names = ["Nebi", "Elif", "Zeynep", "Tahir"]

func position(of name: String, in array: [String]) -> Int?{
    
    for i in 0..<array.count {
        if array[i] == name {
            return i
        }
    }
    return nil
}

if let sonuc = position(of: "reree", in: names){
    print("\(sonuc)")
} else {
    print("no thing")
}

/****************** OPTIONALS 2 ***************************/

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006:
        return "2006 album"
    case 2008:
        return "2008 album"
    default:
        return nil
    }
}

if let year = albumReleased(year: 2010)?.uppercased(){
    print("\(year)")
} else {
    print("No album".uppercased())
}

let album = albumReleased(year: 2010) ?? "unknown".uppercased()
print("\(album)")

/******************** ENUM    ******************************/

enum WeatherType{
    case sun, cloud, rain, wind(_ speed : Int), snow
}

func hetHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .wind(let speed) where speed <= 10:
        return "so so"
    case .cloud, .wind: return "Dislike"
    case .rain: return "Hate"
    case .sun: return nil
    case .snow: return "Trouble"
    }
}

if let status = hetHaterStatus(weather: .wind(10))?.uppercased(){
    print(status)
} else {
    print("I am happy")
}

/***********************   STRUCT   *******************************/

struct Person{
    var clothes: String
    var shoes: String
    
    func describe(){
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let person1 = Person(clothes: "Jeans", shoes: "sneakers")

let person2 = Person(clothes: "Trausers", shoes: "normal shoes")

print(person1.clothes)
print(person2.clothes)

var person1Copy = person1

person1Copy.clothes = "Skirts"

print(person1.clothes)
print(person1Copy.clothes)

person1Copy.describe()
person1.describe()
person2.describe()


/**********************   CLASSES *******************************/

class Singer{
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing(){
        print("La la la la")
    }
    
}


class CountrySinger: Singer{
    
    override func sing() {
        print("trin trin")
    }
}

var taylor = CountrySinger(name: "Taylor", age: 25)
taylor.sing()

class HeavyMetalSinger: Singer{
    
    var noiseLevel: Int
    
    init(name: String, age:Int, noiseLevel: Int){
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("di di di di \(noiseLevel)")
    }
}

var heavy = HeavyMetalSinger(name: "Bon Jovi", age: 60, noiseLevel: 100)

heavy.sing()

/*********************** PROPERTIES *************************************************/

struct Human{
    
    var age: Int
    
    var ageInMonths: Int {
        return age * 12
    }
    
    var clothes: String {
        
        willSet{
            updateUI(msg: "I am chaging from \(clothes) to \(newValue)")
        }
        
        didSet{
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
    
    func updateUI(msg: String){
        print(msg)
    }
}

var human = Human(age: 30, clothes: "T-shirts")
human.clothes = "Pants"

print(human.ageInMonths)

/************************************************************************************/



/* var x = Array(repeating: "yes", count: 750000)

func randomInt(min: Int, max: Int) -> Int{
    return Int.random(in: min...max)
    
}

func timeElapsedInSecondsWhenRunningCode(from: Int, to: Int, operation: ()->()) -> Double {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print(Double(timeElapsed))
    return Double(timeElapsed)
}

struct Test {
    var range: (Int, Int)
    var time: Double
}

var mesurments = [Int: Test]()

for i in 0...32 {

    let from  = randomInt(min: 0, max: x.count/2)

    let to = randomInt(min: from, max: x.count)

    let z = x

    let time = timeElapsedInSecondsWhenRunningCode(from: from, to: to, operation: {
            x.removeSubrange(from...to)
    })

    x = z
    mesurments[i] = Test(range: (from, to), time: time)
} */



