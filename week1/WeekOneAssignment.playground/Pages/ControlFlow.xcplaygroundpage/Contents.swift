//: [Previous](@previous)
/*: # Control Flow*/
/*:## Q1 */
print("\nQ1<<<")

let lottoNumbers = [10, 9, 8, 7, 6, 5]
for num in lottoNumbers.reversed()[0...2]{
    print(num)
}

/*:## Q2-1 */
print("\nQ2-1<<<")

lottoNumbers.reversed().forEach { number in
    print(number)
}
/*:## Q2-2 */
print("\nQ2-2<<<")

for number in lottoNumbers where number % 2 == 0{
    print(number)
}

/*: ## Q3-1 */
print("\nQ3-1<<<")

var index = lottoNumbers.count - 1
while index >= 0{
    print(lottoNumbers[index])
    index -= 1
}
/*: ## Q3-2 */
print("\nQ3-2<<<")
index = 0
while index<lottoNumbers.count{
    if lottoNumbers[index] % 2 == 0{
        print(lottoNumbers[index])
    }
    index += 1
}

/*: ## Q4-1 */
print("\nQ4-1<<<")

index = lottoNumbers.count - 1
repeat{
    print(lottoNumbers[index])
    index -= 1
}while index >= 0
/*: ## Q4-2 */
print("\nQ4-2<<<")

index = 0
repeat{
    if lottoNumbers[index] % 2 == 0{
        print(lottoNumbers[index])
    }
    index += 1
}while index<lottoNumbers.count

/*: ## Q5
 * while loop：先進行判斷，判斷為真才會執行
 * repeat-while loop：無論是否為真，先執行一次後判斷是否要繼續執行
 */

/*: ## Q6 */
print("\nQ6<<<")

let isRaining = false
if isRaining{
    print("It’s raining, I don’t want to work today.")
}else{
    print("Although it’s sunny, I still don’t want to work today.")
}

/*: ## Q7 */
print("\nQ7<<<")

let jobLevel = 4
switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}

//: [Next](@next)
