//: [Previous](@previous)

/*: ## Q1 */
protocol PoliceMan{
    func arrestCriminals()
}

protocol ToolMan{
    func fixComputer()
}

struct Person: PoliceMan{
    func arrestCriminals() {print("Criminal arrested.")}
    let name: String
    var toolMan: ToolMan
}

struct Engineer: ToolMan{
    func fixComputer() {print("Computer Fixed.")}
}

let Louis = Engineer()
let Steven = Person(name: "Steven", toolMan: Louis)

Steven.arrestCriminals()
Steven.toolMan.fixComputer()

//: [Next](@next)
