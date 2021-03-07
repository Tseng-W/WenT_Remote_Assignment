//: [Previous](@previous)

/*: ## Q1 */
print("---Q1---")
enum Gasoline: String{
    case oil92 = "92", oil95 = "95", oil98 = "98", diesel = "diesel"
    func getPrise() -> Double {
        switch self {
        case .oil92:
            return 92.0
        case .oil95:
            return 95.0
        case .oil98:
            return 98.0
        case .diesel:
            return 90.0
        }
    }
    
    func getOilName() -> String{
        return self.rawValue
    }
}
var gas = Gasoline.diesel
print(gas.getPrise())
print(gas.getOilName())

/*: associate value 讓原enum除了定義case外可將參數帶入以應對更複雜的情況 */
enum GasStation{
    case buyOil(oil: Gasoline, amount: Double)
    func getTotalPrise() -> Double{
        switch self {
        case let .buyOil(oil, amount):
            return oil.getPrise() * amount
        }
    }
}
var gasStation = GasStation.buyOil(oil: Gasoline.oil92, amount: 2.0)
gasStation.getTotalPrise()

/*: ## Q2 */
print("---Q2---")
class Pet{
    let name: String
    init(name: String) {
        self.name = name
    }
}

class People{
    var pet: Pet?
    let name: String
    init(name: String , with pet: Pet?) {
        self.name = name
        self.pet = pet
    }
}

let wen = People(name: "Wen", with: Pet(name: "Ejji"))
let ben = People(name: "Ben", with: nil)

func printPetName(people: People){
    if let petName1 = people.pet?.name{
        print("\(people.name)的寵物是\(petName1) (by if)")
    } else{
        print("\(people.name)沒有養寵物 (by if)")
    }
    
    guard let petName2 = people.pet?.name else{
        print("\(people.name)沒有養寵物 (by guard)"); return
    }
    print("\(people.name)的寵物是\(petName2) (by guard)")
}

printPetName(people: wen)
printPetName(people: ben)

//: [Next](@next)
