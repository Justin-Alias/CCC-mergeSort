import UIKit

var names: [String] = ["Fernando","Fernando","Fernando","Fernando","Fernando","Drew","Drew","Drew","Drew","Drew","Drew","Drew","Drew","Jonathan","Jonathan","Jonathan","Jonathan","Jonathan","Jonathan","David","David","David","David","Drew"]


func B1(Names: [String]) {
    var array = Names
    var longest = ("", 0)
    var seclong = ("", 0)
    var current = ("", 0)
    for index in 0..<Names.count {
            current.0 = Names[index]
            var currentlongest = 0
        for index2 in 0..<array.count {
            if current.0 == array[index2]{
                currentlongest += 1
            }
        }
        if currentlongest > longest.1 {
            seclong = longest
            longest.1 = currentlongest
            longest.0 = current.0
        } else if currentlongest > seclong.1 && currentlongest < longest.1 {
            seclong.0 = current.0
            seclong.1 = currentlongest
        }
    }
    
    print((longest.0, longest.1, seclong.0 , seclong.1))
}

(B1(Names: names))


func PlzWork (Name: [String]) {
    var array = Name
    var longBoi = ("", 0)
    var seclong = ("", 0)
    var current = ("", 0)
    
    for index in 0..<Name.count {
        current.0 =  Name[index]
        var currentlongest = 0
        for index2 in 0..<array.count {
            if current.0 == array[index2]{
                currentlongest += 1
            }
        }
        if currentlongest > longBoi.1{
            seclong = longBoi
            longBoi.1 = currentlongest
            longBoi.0 = current.0
        }else if currentlongest < longBoi.1 && currentlongest > seclong.1 {
            seclong.1 = currentlongest
            seclong.0 = current.0
        }
    }
    print("The current longest is \(longBoi.0) with \(longBoi.1) times and the second longest is \(seclong.0) with \(seclong.1) times")
}

PlzWork(Name: names)

func studyTime(InputArray: [String]){
    var newarray = InputArray
    var Long = ("", 0)
    var secLong = ("", 0)
    var current = ("", 0)
    for index in 0..<InputArray.count{
        current.0 = InputArray[index]
        current.1 = 0
        for index2 in 0..<newarray.count{
            if current.0 == newarray[index2]{
                current.1 += 1
            }
        }
    if current.1 > Long.1 {
        secLong = Long
        Long = current
    }else if current.1 < Long.1 && current.1 > secLong.1{
        secLong = current
        }
    }
    print("\(Long.0), \(Long.1) \(secLong.0) \(secLong.1)" )
    
}

studyTime(InputArray: names)
/* This works for finding the two most common elements in a array but if theres a tie between two elements then it will only display one. The B1 that Barram gave asks your to find the two most common elements and there is a tie between the most and second most elements in the array, also to return the arrays of duoploes on different lines */
