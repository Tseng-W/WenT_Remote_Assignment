//: [Previous](@previous)
/*:
 # Collection
 */
/*: ## Q1 */
var myFriends: [String] = []

/*: ## Q2 */
myFriends += ["Ian", "Bomi", "Kevin"]

/*: ## Q3 */
myFriends.append("Michael")

/*: ## Q4 */
if let index = myFriends.firstIndex(of: "Kevin"){
    let removedName = myFriends.remove(at: index)
    myFriends.insert(removedName, at: 0)
}

/*: ## Q5 */
for name in myFriends{
    print(name)
}

/*:## Q6
 1. 無值
 2. Array長度為4, index自0起計算至3, index(5)大於長度故為空
 */

/*:## Q7 */
myFriends.first

/*: ## Q8 */
myFriends.last

/*: ## Q9 */
var myCountryNumber: [String: Int] = [:]

/*: ## Q10 */
myCountryNumber = ["US": 1, "GB": 44, "JP": 81]

/*: ## Q11 */
myCountryNumber["GB"] = 0

/*: ## Q12 */
let emptyDictionary = [String: Int]()
emptyDictionary.isEmpty

/*: ## Q13 */
myCountryNumber["GB"] = nil

//: [Next](@next)
