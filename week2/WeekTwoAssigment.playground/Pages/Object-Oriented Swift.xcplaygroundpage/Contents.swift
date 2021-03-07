//: [Previous](@previous)

/*: ## Q1 */
enum Gender{
    case male
    case female
    case undefined
}
class Animal{
    let gender: Gender
    init(gender: Gender) {
        self.gender = gender
    }
    func eat() {
        print("I eat everything.")
    }
}

/*: ## Q2*/
class Elephant: Animal{
    override func eat(){
        print("I eat leaves.")
    }
}

class Tiger: Animal{
    override func eat() {
        print("I eat meat.")
    }
}

class Horse: Animal{
    override func eat(){
        print("I eat gress.")
    }
}
let elephant = Elephant(gender: Gender.male)
let tiger = Tiger(gender: Gender.female)
let horse = Horse(gender: Gender.male)

/*: ## Q3*/
class Zoo{
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
    func test(){
        weeklyHot = Tiger(gender: Gender.female)
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: Gender.male))
zoo.weeklyHot = elephant
zoo.weeklyHot = tiger
zoo.weeklyHot = horse

/*: ## Q4
 * struct: Call by value, 每一個Struct儲存一份資料，(Struct)A = (Struct)B會將B資料複製至A，修改A不影響B數據
 * class: Call by reference, 儲存一個指向資料的指標，(Class)A = (Class)B會將B指標複製給A，修改A資料會同時影響B資料
 ## Q5
 * instance method: 從屬於已實例化struct / class / enum物件的函式，未實例化前不可呼叫
 * type method: 從屬於struct / class / enum類型本身的函式，因此可透過類型直接互叫
 ## Q6
 Initilizer主要功能在Class與Struct皆是替結構內參數進行初始化賦值，主要差別如下
 * Struct: 具Memberwise Initilizer，可於實體化時針對未賦值的變數自動產生Initilizer，如Dog中的color
 * Class: 所有參數皆需初始化，若無初始值則需寫入Initilizer
 */
struct Dog{
    let name = "black"
    let color: String
}
var doggie = Dog(color: "black")

class Cat{
    let name = "Ejji"
    //var color: String
    let color: String
    init(color: String) {
        self.color = color
    }
}
var cattie = Cat(color: "black")

/*:
 ## Q7
 * Instance method: 指的是該實體物件本身，因此可呼叫Instance method
 * Type method: 指的是該Type本身，因此只能呼叫type method或static parameter
 */
class Ben{
    static let name = "Ben"
    class func getName() -> String{
        return name
    }
    class func printName(){
        print("My name is \(self.getName())")
    }
    
    let gender = "male"
    func printGender(){
        Ben.printName()
        print("I am \(self.gender)")
    }
}
var person = Ben()
Ben.printName()
person.printGender()

/*: ## Q8
 * reference type: 將A資料指定為B資料時共用同一份資料的位址，因此改動A資料時B資料也會隨之變動
 * value type: 將A資料指定為B資料時會生成一份新的數據，因此改動A資料時B資料不會變化
 */

//: [Next](@next)
