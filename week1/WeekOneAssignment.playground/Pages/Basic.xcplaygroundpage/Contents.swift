//: [Previous](@previous)
/*:
 # Basic
## Q1
 * vat: 變數，賦值後可進行變更
 * let: 常數，賦值後不可變更
 * 因 Pi 為指定數值，因此以 let 初始化為常數
 */
let Pi: Double = 3.14


/*:
## Q2
 */
let ten: Int = 10
let three: Int = 3
var average = ten / three //= (Int) 3

/*:
 * Please solve this problem so that we can put the average in the recordsystem.
 ## Q3-1
 Float(Z): 將數值Z轉換至數值最相近的Float型態
 */
var newAcerage = Float(ten / three)

/*:
 * Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
 ## Q3-2
 * 10 / 3 = (Int)3
 * 10.0 / 3.0 = (Double)3.0
 \
差別在呼叫函式與回傳值形態不同
 */

/*:
 ## Q4
 */
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

/*:
## Q5
 */
var salary = 22000
salary += +28000

/*:
## Q6 */
salary == 50000

/*:
## Q7 */
var ramain = ten % three

/*:
## Q8
 let 相比 var 最大的不同為 pointer 不可變更。
 \
 若 pointer 不變，仍可進行變更（如array.append(foo)）
 \
 相反，若更改 let 常數的 pointer （重新指派）即會拋錯。
 */

/*: Q9
 1. 命名需含有必要的描述特徵，同時避免不必要或重複的描述文字
 2. 針對變數／函式的使用寫法盡量貼近英文文法，讓其用途更加具體
 3. 不同Class中相同功能的函式（或僅是傳入形態不同）應使用相同的命名
 4. 駱駝命名法
 5. 有回傳值的函式，偏向使用有方向性／目的性的動詞開頭如get
 */


/*:
 ## Q10
 當給參數賦值時，編譯器會依照賦予的數據形態判斷該參數應有的數據形態，省去替每個參數指定型別的麻煩。
 */


/*:
## Q11
 var phoneNumber = 0987654321：於此步驟時變數 a 已被指派為 Int
 \
 phoneNumber = "Hello world"：因將 String 型別資料指派給 Int 變數，因型別不同而拋錯。
 */

//: [Next](@next)
