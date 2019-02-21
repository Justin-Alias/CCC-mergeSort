import UIKit

//Problem J2: Shifty Sum
//Time limit: 1 second
//Problem Description
//Suppose we have a number like 12. Let’s define shifting a number to mean adding a zero at the end. For example, if we shift that number once, we get the number 120. If we shift the number again we get the number 1200. We can shift the number as many times as we want. In this problem you will be calculating a shifty sum, which is the sum of a number and the numbers we get by shifting. Specifically, you will be given the starting number N and a non-negative integer k. You must add together N and all the numbers you get by shifting a total of k times.
//For example, the shifty sum when N is 12 and k is 1 is: 12 + 120 = 132. As another example, the shifty sum when N is 12 and k is 3 is 12 + 120 + 1200 + 12000 = 13332.
//Input Specification
//The first line of input contains the number N (1 ≤ N ≤ 10000). The second line of input contains k, the number of times to shift N (0 ≤ k ≤ 5).
//Output Specification
//Output the integer which is the shifty sum of N by k.
//Sample Input
//12
//3
//Output for Sample Input
//13332


//func killMeNow (Number: Int, kValue: Int) -> Any {
//    var firstNumber = Number
//    var secondNumber = kValue
//    var randomvalue = 0
//
//    for index in 0..<secondNumber {
//        randomvalue += (Int(pow(Decimal(firstNumber), index)))
//
//    }
//}

func CCC (N: Int , K: Int) -> Any{
    var base = N
    var exponent = K
    
    if 1 <= base && base <= 10000 && 0 <= exponent && exponent <= 5{
    switch exponent {
    case 0:
        base = N
    case 1:
        base = N + (N * 10)
    case 2:
        base = N + (N * 100) + (N * 10)
    case 3:
        base = N + (N * 1000) + (N * 100) + (N * 10)
    case 4:
        base = N + (N * 10000) + (N * 1000) + (N * 100) + (N * 10)
    default:
        print("Error")
    }
    }else{
        return ("Did not meet specifications")
    }
    return base
}

print(CCC(N: 12, K: 3))



