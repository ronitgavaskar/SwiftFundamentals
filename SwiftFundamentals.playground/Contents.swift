import UIKit

"""
Lesson 1: Variables
"""

"""
 var: variable that may have value changed after initialization
 let: constant whose value cannot be changed
"""

var tempVar = 42
tempVar = 50
let tempLet = 34
print(tempVar)
print(tempLet)


// Experiment 1: “Create a constant with an explicit type of Float and a value of 4.”
let explicitFloat: Float = 4.0
print(explicitFloat)

// Lesson: Concatenation of different types
let label = "Hello my name is Ronit and I'm"
let age = 22
print(label + String(age) + " years old")
// without the String(age) we get an error saying error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'
// another way to write this statement would be
print("Hello my name is Ronit and I'm \(age) years old")

"""
How would we write this in JAVA?

* for starters, JAVA is a typed language, we wouldn't have var and let
   * var tempVar = 42 would be written as int tempVar = 42
   * The whole `let` feature which forces it to be a constant is similar to the `final` keyword in JAVA


How would we write this in REACT?

* React is a little more similar to Swift in terms of loose type
  * However, the difference lies more within the `let` keyword which in react still refers to a variable that can be changed
  * For a constant value, we would use the `const` keyword
     * Example: const finalValue = 43 implies that the value of finalValue will always be 43

  * The difference between `var` and `let` in react lies more within the scope
     * `let` is block scoped (everything between the {})
     * `var` is global scoped

"""



"""
*********************************************************************************************************************************************************************
"""

"""
Lesson 2: Arrays
"""

var shoppingList = ["apples", "bananas", "oranges"]
// follow 0 indexing
print(shoppingList[1])
shoppingList[2] = "avocados"
shoppingList.append("oranges")
print(shoppingList)

// Initialize empty array
let emptyArray = [String]()
shoppingList = []

"""
How would we write this in JAVA?
   * Java is type based but the essence of the arrays would look like this:
     String[] shoppingList = {"apples", "bananas", "oranges" };

How would we write this in REACT?
  * const shoppingList = [ "apples", "bananas", "oranges" ]

"""


"""
*********************************************************************************************************************************************************************
"""

"""
Lesson 3: Dictionaries
"""

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Ronit"] = "Software Engineer"
print(occupations)

// Initialize empty dictionary
let emptyDictionary = [String: Float]()
occupations = [:]

"""
How would we write this in JAVA?
   * Java would have hashmaps that work like dictionaries
   * HashMap<String, String> occupations = new HashMap<>();
     occupations.put("Malcolm", "Captain");
     occupations.put("Kaylee", "Mechanic");
     occupations.put("Ronit", "Software Engineer");

"""

"""
*********************************************************************************************************************************************************************
"""

"""
Lesson 4: Control Flow
"""

// Challenge: Increase aboveAverageScores by 1 if score is over 50 and belowAverageScores by 1 otherwise

let scores = [51,52,12,14,41,49,51]
var aboveAverageScores = 0, belowAverageScores = 0;

for score in scores {
    if (score > 50) {
        aboveAverageScores += 1
    } else {
        belowAverageScores += 1
    }
}

print("Above average scores: \(aboveAverageScores)")
print("Below average scores: \(belowAverageScores)")

"""
How would we write this in JAVA?
    * This would be more or less the same in java but for... in would be written as for x : xyz
    * for (int score : scores) {
        if (score > 50) {
            aboveAverageScores += 1;
        } else {
            belowAverageScores += 1;
        }
      }

"""

"""
*********************************************************************************************************************************************************************
"""

"""
Lesson 5: Optionals
"""
"""
These are values that may be present or might be missing and are represented by ? 
"""

var optionalName : String? = nil

if let name = optionalName {
    print("Hello \(name)")
} else {
    print("Please set a value for name")
}

"""
To provide a default value we can use ??

This is to provide a single nil value in cases of sentinel values
"""

print("My name is \(optionalName ?? "Ronit")")

"""
How would we write this in JAVA?
    * In most cases, we dont use the Optional Class and end up with a Null Pointer Exception
    * However, in Optional Class use, we get to bypass this NPE
"""

"""
*********************************************************************************************************************************************************************
"""

"""
Lesson 6: Switch
"""

"""
Without a default case, it throws an error saying switch statements need to be exhausting and recommend adding a default case to fix the error
"""

let car = "Mercedes"
switch car {
case let x where x == "Mercedes":
    print("Congrats you're driving your dad's car")
case "Tesla":
    print("Congrats you're driving your mom's car")
case "Nissan":
    print("Congrats you're driving your own car")
default:
    print("None of your cars were selected")
}
// Congrats you're driving your dad's car

"""
How would we write this in JAVA?
    * This would be written the following way in java:
    
    switch (String car) {
        case "Mercedes":
            System.out.println("Congrats you're driving your dad's car");
        case "Tesla":
            System.out.println("Congrats you're driving your mom's car");
        case "Nissan":
            System.out.println("Congrats you're driving your own car");
        default:
            System.out.println("None of your cars were selected");
    };

    * Very similar to swift without the syntax switch

"""


"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 7: FOR IN Loops during Dictionaries
"""

var numbers = [
    "primes": [2,3,5,7],
    "odds": [1,3,5,7],
    "evens": [2,4,6,8]
]

var largest = 0
var largestType = ""
for (type, nums) in numbers {
    for number in nums {
        if (number > largest) {
            largest = number
            largestType = type
        }
    }
}
print("\(largest) is the largest number and belongs to \(largestType)")
// 8

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 8: WHILE loops
"""

var n = 1
var s = "a"
while n < 5 {
    s += "a"
    n += 1
}

print(s)
// aaaaa

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 9: REPEAT loops
"""

n = 1
s = "b"
repeat {
    s += "b"
    n += 1
} while n < 5

print(s)
// bbbbb

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 10: FOR loops
"""
var total = 0
for i in 0..<4 {
    total += i
}
// total = 0 + 1 + 2 + 3 = 6

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 11: function and closures
"""
"""
The _ before parameter name means you don't need to add the actual parameter name before calling it.
You could also replace this with an alias
"""

func greet(_ name: String, age: Int, meal dinner: String) -> String {
    return "Hello my name is \(name) and I am \(age) years old. I ate \(dinner) today."
}

let greeting = greet("Ronit", age: 22, meal: "Pasta and Tomato Soup")
print(greeting)
// Hello my name is Ronit and I am 22 years old. I ate Pasta and Tomato Soup today.

"""
How do we write this in JAVA?
    * We need to add a return type to the function here
    
    public String greet(String name, int age, String dinner) {
        return String.format("Hello my name is %s and I am %d years old. I ate %s today.", name, age, dinner);
    }


"""

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 12: Tuple return
"""

func calculateStats(_ scores: [Int]) -> (min: Int, max: Int, avg: Float) {
    var min = 99999999999
    var max = 0
    var total = 0
    
    let size = scores.count
    for score in scores {
        if (score < min) {
            min = score
        } else if (score > max) {
            max = score
        }
        total += score
    }
    
    return (min, max, Float(total) / Float(size))
}

let stats = calculateStats([10,12,11,13,18,17])
print("MINIMUM: \(stats.min)")
print("MAXIMUM: \(stats.max)")
print("AVERAGE: \(stats.avg) OR \(stats.2)")

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 13: Function inside Function
"""

func returnFifteen() -> Int {
    
    let curr = 10
    
    func addFive(num: Int) -> Int {
        return num + 5
    }
    
    return addFive(num: curr)
}

print(returnFifteen())

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 14: Function that return Function
"""
"""
You can return a function as a type
Please note that in the following example, parameters need to be presented in a parenthesis such as increment()
"""

func increment() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    
    return addOne
}

var incr = increment()
incr(8)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for num in list{
        if (condition(num)) {
            return true
        }
    }
    return false
}

func lessThanFive(num: Int) -> Bool {
    return (num < 5)
}

hasAnyMatches(list: [12,13,4,7,3,12], condition: lessThanFive)

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 15: Closures
"""

var numbersList = [12,13,17,14,12,15]
numbersList.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

// Closure that returns 0 for all odd numbers
func returnZeroForOdds(_ numbers: [Int]) -> [Int] {
    return numbers.map({(number: Int) -> Int in
        if (number % 2 != 0) {
            return 0
        } else {
            return number
        }
    })
}

returnZeroForOdds([12,13,4,7,3,12]) // [12,0,4,0,0,12]

"""
Other ways to write closures involve just assigning them to a variable
"""

var mappedTripleNums = numbersList.map({number in 3 * number})
print(mappedTripleNums)

var sortedNums = numbersList.sorted {$0 > $1}
print(sortedNums)
// $0 and $1 are parameters that may be numbers instead of names

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 16: Classes
"""

class Shape {
    var name = ""
    var numberOfSides: Int = 0
    // use init to initialize the class
    // think of this like a constructor
    init(name: String) {
        self.name = name
    }

    func describe() -> String {
        return "Hi I am a \(name)"
    }
}

var shapeOne = Shape(name: "sample name")
shapeOne.describe()

// we can use the keyword DEINIT to deinitialize and free up some memory

// if you use a subclass within a superclass and want to override its method you would need to use the OVERRIDE keyword

class Square: Shape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    override func describe() -> String {
        return "I am a square"
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
}

var squareOne = Square(sideLength: 3.5, name: "Square")
squareOne.area()
squareOne.describe()

// CHALLENGE: Create a subclass for circle which takes in radius and name as parameters
class Circle : Shape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    override func describe() -> String {
        return "Hello I am a circle and my name is \(name). My area is \(area()) and I have a circumference of \(circumference())"
    }
    
    func area() -> Float {
        return Float.pi * Float(radius) * Float(radius)
    }
    
    func circumference() -> Float {
        return 2 * Float.pi * Float(radius)
    }
}

var circleOne = Circle(radius: 2.2, name: "Circle ONE")
circleOne.describe()

"""
GETTER and SETTER
"""

class EquilateralTriangle: Shape {
    var sideLength: Double = 0.0
    
    init(name: String, sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3 * sideLength
        }
        
        set(myNewValue) {
            sideLength = myNewValue / 3.0
            // newValue is the value set to perimeter
        }
    }
    
    override func describe() -> String {
        return "I am an equilateral triangle with \(numberOfSides) sides each with a length of \(sideLength)."
    }
    
}

var myEqTriangle = EquilateralTriangle(name: "My Equilateral Triangle", sideLength: 2.3)
print(myEqTriangle.perimeter) // should be 6.9

myEqTriangle.perimeter = 9.9
myEqTriangle.describe()

"""
Steps inside subclass's initializer:
1) Setting value of subclass
    * self.sideLength = 1.2
2) initializing superclass's init
    * super.init(name: name)
3) override the superclass's properties
    * Superclass has numberSides initialized to 0
    * subclass will set numberSides = 3
"""


"""
MAKE SURE WILLSET is used to make sure triangle and square have the same side length
"""

class TriangleAndSquare {
    
    var triangle: EquilateralTriangle {
        willSet(tri) {
            square.sideLength = tri.sideLength
        }
        
    }
    
    var square: Square {
        willSet(sq) {
            triangle.sideLength = sq.sideLength
        }
        
    }
    
    init(name: String, side: Double) {
        square = Square(sideLength: side, name: name)
        triangle = EquilateralTriangle(name: name, sideLength: side)
    }
    
}

var triangleSquare = TriangleAndSquare(name: "My Triangle and Square", side: 2.5)
print(triangleSquare.triangle.sideLength)
print(triangleSquare.square.sideLength)
print(triangleSquare.square.sideLength == triangleSquare.triangle.sideLength)

"""
Optional values with classes
    * If we add a ? after an instance of a class then we get to see if property can be applicable or not
    * for example square?.sideLength would only be applicable if square is not nil
"""

let optionalSquareInstance : Square? = nil
//let optionalSquareInstance : Square? = Square(sideLength: 2.5, name: "This is my optional square")
let optionalSideLength = optionalSquareInstance?.sideLength
print(optionalSideLength)

"""
Please note that while initializing we need to make sure instance belongs to the optional class as well.
"""

"""
Lesson 17: Enums
"""

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
ace.simpleDescription()

let three = Rank.three
let threeRawValue = three.rawValue
three.simpleDescription()

let queen = Rank.queen
let queenRawValue = queen.rawValue
queen.simpleDescription()


"""
CHALLENGE: Write a function that compares two Rank values by comparing their raw values
"""

func compareRawValuesOfRanks(a: Rank, b: Rank) -> Bool {
    return a.rawValue > b.rawValue
}

compareRawValuesOfRanks(a: Rank.jack, b: Rank.queen) // false
compareRawValuesOfRanks(a: Rank.queen, b: Rank.ten)  // true
compareRawValuesOfRanks(a: Rank.queen, b: Rank.queen) // false

"""
CHALLENGE: Create an enum for Suits that essentially has a method simpleDescription() to print out what suit and has a color() method that says red for hearts and disamonds. black for spades and clubs
"""

enum Suits: Int {
    case hearts = 1
    case spades, clubs, diamonds
    
    func simpleDescription() -> String {
        switch self {
        case .hearts:
            return "Hearts"
        case .diamonds:
            return "Diamonds"
        case .clubs:
            return "Clubs"
        case .spades:
            return "Spades"
        }
    }
    
    func color() -> String {
        switch self {
        case .diamonds:
            return "Red"
        case .hearts:
            return "Red"
        case .spades:
            return "Black"
        case .clubs:
            return "Black"
        }
    }
    
}

let hearts = Suits.hearts
let spades = Suits.spades
hearts.simpleDescription()
hearts.color()

spades.simpleDescription()
spades.color()

hearts.hashValue
spades.hashValue


"""
The enums are similar to react in that when a value isnt provided, they are initialized with a value of 0 and incremented from there
in this case, hearts.rawValue would be 0, spades.rawValue would be 1 and so on.
"""


"""
Implement an enum ServerResponse that has two cases, failure and success, in cases of success, it would print a message showing sunrise and sunset times,
"""

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("7:30 AM", "5:00 PM")
let failure = ServerResponse.failure("Server failed.")

switch success {
case let .result(sunrise, sunset):
    print("The sun rose at \(sunrise) and will set at \(sunset)")
case let .failure(msg):
    print("Here's the error: \(msg)")
}

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 18: Structs
"""

"""
* Support many of features of classes like methods and initializers

WHAT IS THE DIFFERENCE BETWEEN STRUCTURES AND CLASSES?
    * Classes are reference based
        * Basically objects with references are passed around and can be modified

    * Structs and Enums are value based
        * Copies of objects are passed around, hence modifications to copy isn't made to the object itself

"""

struct Card {
    
    var rank: Rank
    var suit: Suits
    
    func simpleDescription() -> String {
        return "The \(rank) of \(suit)."
    }
}

let threeOfHearts = Card(rank: Rank.three, suit: Suits.hearts)
threeOfHearts.simpleDescription()

"""
Challenge: Return an array containing a full deck containing a card of each suit
"""

var deck = [Card]()
for suitRawValue in 1...4 {
    for rankRawValue in 1...13 {
        let rank : Rank? = Rank(rawValue: rankRawValue)
        let suit : Suits? = Suits(rawValue: suitRawValue)
        let card = Card(rank: rank!, suit: suit!)
        deck.append(card)
    }
}

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 19: Protocols
"""

"""
What is a protocol?
    * blueprint of methods, properties and other requirements that suit a particular task or piece of functionality

How do we call a protocol?
    * class SubClass : SuperClass, Protocol_A, Protocol_B { ... }

Why do we need protocol though?
    * In java, this is similar to Interfaces
    * The following example would be a good use of protocols in swift
    * TLDR; abstractions are useful while dealing with common properties
"""


"""
WITHOUT PROTOCOL
struct Human {
    var name: String
}

struct Animal {
    var name: String
}

func printOut(human: Human) -> String {
    return human.name
}

func printOut(animal: Animal) -> String {
    return animal.name
}
"""

// notice how animal and human both have the same property called `name` hence it's a common property and the function can be abstracted
//WITH PROTOCOL

protocol Printable {
    var name: String { get }
}

struct Human: Printable {
    var name: String
}

struct Animal: Printable {
    var name: String
}

func printOut(object: Printable) {
    print(object.name)
}

let lion = Animal(name: "lion")
let gus = Human(name: "gus")
printOut(object: lion)
printOut(object: gus)
// Notice how printOut is abstracted to 'Object' instead of 'Animal' or 'Human'

"""
Let's talk about the `mutating` keyword?
    * So to get to the mutating keyword, we need to talk about classes v. structs
    * classes
        - shares a single instance of the object and passes same reference over
        - hence we can change properties within the same class because it has the same references throughout

    * structs
        - value type
        - takes a copy of the type and passes only the value
        - hence properties are inherently immutable
"""

struct Employee {
    var name: String
    var teamName: String
    
    init(name: String, teamName: String) {
        self.name = name
        self.teamName = teamName
    }
    
    mutating func changeTeam(newTeamName: String) {
        self.teamName = newTeamName
    }
}
var player1 = Employee(name: "Kawhi Leonard", teamName: "Raptors")
player1.changeTeam(newTeamName: "Clippers")
print(player1.teamName)

"""
mutating: doesnt change the actual value but actually mutates variables holding that value
"""

"""
going back to the book
"""

protocol ExampleProtocol {
    var simpleDescription: String {
        get
    }
    
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProperty: Int = 64105
    
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    
    mutating func adjust() {
        simpleDescription += " (adjusted)."
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 20: Extensions
"""

"""
Adds functionality to an existing type like Int, String etc.
    * add protocol conformance to a type from a library or just declared somewhere else
"""

"""
Example: Write an extension that takes an Int and add methods like simpleDescription
"""

extension Int: ExampleProtocol {
    
    var simpleDescription: String {
        return "My number is \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)
var currNum = 8
currNum.adjust()

"""
Challenge: Write an extension for the Double type that adds an absoluteValue property
"""

extension Double {
    var absoluteValue: Double {
        return (self < 0) ? (0 - self) : self
    }
}

var currDouble = 32.123
currDouble.absoluteValue

currDouble = -12576.12343434
currDouble.absoluteValue

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 21: Error Checking
"""

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if (printerName == "Never has toner") {
        throw PrinterError.noToner
    }
    if (printerName == "Printer on fire") {
        throw PrinterError.onFire
    }
    if (printerName == "No paper left") {
        throw PrinterError.outOfPaper
    }
    return "Job sent"
}

// notice how throw is very similar to Exceptions in java

do {
    let jobId = 123
    let printerResponse = try send(job: jobId, toPrinter: "Never has toner")
    //    let printerResponse = try send(job: 1, toPrinter: "Heisenberg")
    print(printerResponse)
    
} catch PrinterError.noToner {
    print("No toner present in printer")
} catch PrinterError.onFire {
    print("Printer is currently on fire")
} catch PrinterError.outOfPaper {
    print("The printer is out of paper")
}

"""
Difference between error checking and exception handing is we only have a try catch error in Java while Swift has do ... catch with try being keyword to call the job
"""

let printerSuccess = try? send(job: 123, toPrinter: "Heisenberg")
let printerFailure = try? send(job: 123, toPrinter: "Never has toner")


"""
DEFER: only executes code with defer keyword right before returning

"""

var fridgeIsOpen = false
let fridgeContents = ["milk", "eggs", "vegetables"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContents.contains(food)
    return result
}

fridgeContains("butter")
fridgeContains("milk")

"""
*********************************************************************************************************************************************************************
"""
"""
Lesson 22: Generics
"""

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

makeArray(repeating: "milk", numberOfTimes: 3)

func anyCommonElement <T: Sequence, U: Sequence> (_ lhs: T, _ rhs: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element {
        var commonElements = [T.Element]()
        for lhsItem in lhs {
            for rhsItem in rhs {
                if (lhsItem == rhsItem) {
                    commonElements.append(lhsItem)
                }
            }
        }
        
    return commonElements
}
anyCommonElement([1,2,3,4], [2,4,5])
