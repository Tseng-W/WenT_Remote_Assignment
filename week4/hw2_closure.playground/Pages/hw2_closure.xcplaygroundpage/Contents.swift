//Function
//func checkOdd(num: Int) -> Bool{
//    return num % 2 == 1
//}

var checkOddClosure = {(num: Int) -> Bool in
    return num % 2 == 1
}

checkOddClosure(2)

var checkOddClosure2 = {$0 % 2 == 1}

checkOddClosure2(2)
