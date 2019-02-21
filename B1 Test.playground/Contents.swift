import UIKit
import Foundation
var myArray: [String]  = ["red", "red", "blue", "blue", "purple", "yellow", "yellow", "pink", "purple", "pink", "purple", "purple", "blue", "pink", "blue", "purple", "blue", "yellow", "blue", "yellow", "purple", "blue", "blue", "blue", "purple", "pink", "purple", "pink", "purple", "purple", "red", "yellow", "yellow", "purple", "pink", "pink", "purple", "yellow", "purple", "pink", "purple", "pink", "purple", "yellow", "yellow", "blue", "purple", "blue", "pink", "yellow", "red", "blue", "pink", "red", "purple", "blue", "blue", "pink", "yellow", "yellow", "yellow", "yellow", "purple", "purple", "purple", "red", "yellow", "pink", "purple", "blue", "purple", "yellow", "red", "red", "purple", "yellow", "blue", "blue", "blue", "purple", "blue", "pink", "blue", "yellow", "purple", "red", "purple", "yellow", "blue", "red", "yellow", "red", "pink", "purple", "red", "blue", "yellow", "purple", "yellow", "blue", "red", "pink", "purple", "red", "yellow", "blue", "purple", "pink", "purple", "red", "yellow", "yellow", "red", "red", "pink", "purple", "red", "red", "blue", "pink", "blue", "pink", "blue", "blue", "blue", "yellow", "red", "red", "red", "yellow", "purple", "purple", "purple", "yellow", "purple", "purple", "red", "blue", "red", "yellow", "red", "pink", "purple", "blue", "pink", "purple", "yellow", "pink", "red", "red", "purple", "blue", "red", "pink", "yellow", "pink", "pink", "pink", "yellow", "blue", "yellow", "pink", "yellow", "yellow", "red", "pink", "purple", "yellow", "blue", "yellow", "blue", "pink", "blue", "blue", "blue", "red", "yellow", "purple", "purple", "purple", "pink", "pink", "red", "purple", "yellow", "red", "purple", "red", "red", "yellow", "blue", "blue", "yellow", "yellow", "red", "pink", "yellow", "red", "red", "pink", "blue", "yellow", "purple", "red", "blue", "purple", "yellow", "red", "pink", "yellow", "pink", "yellow", "yellow", "yellow", "blue", "blue", "yellow", "yellow", "blue", "yellow", "purple", "red", "purple", "blue", "yellow", "purple", "purple", "pink", "purple", "yellow", "purple", "blue", "pink", "purple", "yellow", "blue", "purple", "purple", "red", "pink", "purple", "blue", "red", "red", "yellow", "red", "yellow", "pink", "blue", "purple", "pink", "purple", "pink", "blue", "yellow", "red", "yellow", "blue", "purple", "blue", "purple", "blue", "blue", "red", "purple", "purple", "red", "blue", "pink", "blue", "pink", "pink", "purple", "pink", "yellow", "red", "pink", "purple", "blue", "purple", "red", "pink", "purple", "red", "yellow", "pink", "blue", "blue", "red", "yellow", "blue", "red", "blue", "purple", "purple", "blue", "red", "purple", "red", "red", "pink", "red", "pink", "red", "yellow", "yellow", "red", "yellow", "purple", "purple", "blue", "pink", "pink", "yellow", "blue", "yellow", "purple", "yellow", "red", "blue", "red", "yellow", "purple", "purple", "blue", "red", "pink", "purple", "purple", "yellow", "red", "blue", "red", "red", "red", "pink", "blue", "red", "red", "blue", "pink", "yellow", "yellow", "pink", "pink", "red", "blue", "yellow", "purple", "yellow", "purple", "blue", "purple", "blue", "pink", "yellow", "purple", "blue", "pink", "yellow", "purple", "yellow", "blue", "pink", "purple", "red", "pink", "purple", "purple", "yellow", "purple", "red", "purple", "blue", "yellow", "yellow", "pink", "blue", "red", "red", "pink", "purple", "red", "pink", "yellow", "yellow", "blue", "pink", "purple", "red", "purple", "blue", "yellow", "pink", "blue", "pink", "red", "purple", "red", "yellow", "red", "red", "red", "purple", "blue", "red", "red", "pink", "red", "blue", "red", "yellow", "pink", "blue", "red", "blue", "pink", "red", "pink", "blue", "pink", "pink", "purple", "purple", "yellow", "pink", "blue", "red", "pink", "blue", "pink", "blue", "pink", "blue", "yellow", "purple", "red", "pink", "pink", "yellow", "blue", "yellow", "blue", "red", "blue", "blue", "pink", "yellow", "pink", "purple", "pink", "purple", "pink", "pink", "blue", "blue", "blue", "yellow", "pink", "red", "purple", "red", "yellow", "blue", "blue", "red", "red", "blue", "yellow", "red", "red", "red", "yellow", "blue", "purple", "blue", "yellow", "yellow", "purple", "yellow", "pink", "yellow", "yellow", "blue", "purple", "red", "pink", "blue", "red", "yellow", "blue", "pink", "yellow", "purple", "blue", "red", "red", "blue", "red", "pink", "blue", "purple", "purple", "red", "pink", "purple", "red", "pink", "yellow", "purple"]

// Return two arrays of tuples that indicate the most common elements and the second most common elements.
// *** reason its two arrays is because there might be a tie for the most common element and there might be a tie for the second most common elements, if there is no tie, than the array will just contain one element.

func CCC(Input:[String]) -> ([(String , Int)], [(String , Int)]){
    var newarray = Input
    var long = ("", 0)
    var seclong = ("", 0)
    var current = ("", 0)
    var arrayLong:[(String, Int)] = []
    var arraySecLong:[(String, Int)] = []
    var usedobjects:[String] = []
    // create an array that will hold the first and the second
    //red and yellow tie for 2 and blue and purple tie for 1
    for index in 0..<Input.count{
        current.0 = Input[index]
        current.1 = 0
        for index2 in 0..<newarray.count{
            if usedobjects.contains(current.0) {
                break
            }
            if current.0 == newarray[index2]{
                current.1 += 1
            }
        }
        if current.1 > long.1{
            arraySecLong = arrayLong
            arrayLong.removeAll()
            seclong = long
            long = current
            arrayLong.append(current)
            
        } else if current.1 == long.1 {
            arrayLong.append(current)
        } else if current.1 < long.1 && current.1 > seclong.1 {
            arraySecLong.removeAll()
            arraySecLong.append(current)
            seclong = current
        } else if current.1 == seclong.1 {
            arraySecLong.append(current)
        }
        usedobjects.append(current.0)
}
    print("\(arrayLong)")
    print("\(arraySecLong)")
    return (arrayLong , arraySecLong)
}

CCC(Input: myArray)
