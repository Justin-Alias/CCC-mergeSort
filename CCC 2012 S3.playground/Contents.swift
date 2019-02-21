import UIKit

// 2012 waterloo CCC s3


var test = [5,1,1,1,4,3]
var test2 = [4,10,6,1,8]

// Working
func b1(array: inout[Int]) -> Int {     // ([(String, Int)], [(String, Int)])                ([Array<Any>])
    // Making all the vribales for the words and having both the value of the number and how many times it occurs
    var hWord = (0,0)
    var h2Word = (0,0)
    var sWord = (0,0)
    var s2Word = (0,0)
    // The current word
    var tempWord = (0,0)
    // The difference between the two words
    var difference = 0
    // Creating a loop that will go throught the entire array at its count and every time it will go and make the temporary word equal to the array at the index
    for index in 0..<array.count{
        tempWord.0 = array[index]
        tempWord.1 = 0
        // Creating a second loop that will also 
        for index2 in 0..<array.count{
            if tempWord.0 == array[index2]{
                tempWord.1 += 1
            }
        }
        
        if tempWord.1 >= hWord.1{
            if tempWord.1 > hWord.1{
                hWord = tempWord
            }else if tempWord.1 == hWord.1 && tempWord.0 != hWord.0{
                h2Word = tempWord
            }
        }else if tempWord.1 >= sWord.1{
            if tempWord.1 > sWord.1{
                sWord = tempWord
            }else if tempWord.1 == sWord.1 && tempWord.0 != sWord.0 {
                s2Word = tempWord
            }
        }
    }
    
    print("highest: \(hWord.0), n times: \(hWord.1)")
    print("highest2: \(h2Word.0), n times: \(h2Word.1)")
    print("second highest: \(sWord.0), n times: \(sWord.1)")
    print("second highest: \(s2Word.0), n times: \(s2Word.1)")
    if hWord.1 == h2Word.1, sWord.1 == s2Word.1{
        array.sort()
        array.reversed()
        print(array)
        difference = (array[0]-array[array.count-1])
        print(difference)
    }else{
        if hWord.1 == h2Word.1 {
            difference = (hWord.0-h2Word.0)
            guard difference >= 0 else {
                print("\(difference * -1)")
                return (difference * -1)
            }
        }else if sWord.1 == s2Word.1{
            let number = Int.random(in: 0...1)
            if number == 1{
                print("\(hWord) - \(sWord)")
                difference = hWord.0 - sWord.0
                guard difference >= 0 else {
                    print("\(difference * -1)")
                    return (difference * -1)
                }
            }else{
                print("\(hWord) - \(s2Word)")
                difference = hWord.0 - s2Word.0
                guard difference >= 0 else {
                    print("\(difference * -1)")
                    return (difference * -1)
                }
            }
        }else{
            print("Done")
            difference = hWord.0 - sWord.0
            guard difference >= 0 else {
                print("\(difference * -1)")
                return (difference * -1)
            }
        }
    }
    
    return difference
}
b1(array: &test)



b1(array: &test2)
