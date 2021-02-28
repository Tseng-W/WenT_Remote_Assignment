//: [Previous](@previous)

/*:# Function*/
/*:## Q1 */
func greet(person name: String) -> String{
    return "Hello \(name)"
}
greet(person: "Celeste")

/*:## Q2 */
func multiply(a: Int, b: Int = 10){
    print("a * b = \(a * b)")
}
multiply(a: 3, b: 4)
multiply(a: 3)

/*:## Q3
 * parameter name為Function內部運行時使用的變數名稱，如Q1的name
 * argument label為呼叫Function時，為了更利於辨識與使用而設的外部變數名稱，如 Q1 的 person
 */

/* Q4
 birthday回傳字串
 paymentj回傳浮點數
 */
func birthday() -> String{
    return "02/25"
}

func payment() -> Double{
    return 1.23
}
type(of: birthday())
type(of: payment())

//: [Next](@next)
