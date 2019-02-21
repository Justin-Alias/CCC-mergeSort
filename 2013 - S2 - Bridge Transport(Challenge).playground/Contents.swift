import UIKit


func convertFilesToIntArray (fileName: String, fileExtention: String) -> [Int]{
    let one = Bundle.main.url(forResource: fileName, withExtension: fileExtention)
    var fileStringArray = (try! String(contentsOf: one!, encoding: String.Encoding.utf8)).components(separatedBy: "\n")
    fileStringArray.removeLast()
    // can remove the for looop if there are no spaces in the numbers in the file.
    let finalFile = fileStringArray.map({Int ($0)!})
    return finalFile
}

var fileOne = convertFilesToIntArray(fileName: "s2.1", fileExtention: ".in")
var fileTwo = convertFilesToIntArray(fileName: "s2.2", fileExtention: ".in")
var fileThree = convertFilesToIntArray(fileName: "s2.3", fileExtention: ".in")
var fileFour = convertFilesToIntArray(fileName: "s2.4", fileExtention: ".in")
var fileFive = convertFilesToIntArray(fileName: "s2.5", fileExtention: ".in")
var fileSeven = convertFilesToIntArray(fileName: "s2.7", fileExtention: ".in")
var fileEight = convertFilesToIntArray(fileName: "s2.8", fileExtention: ".in")
//var fileNine = convertFilesToIntArray(fileName: "s2.9", fileExtention: ".in")
//var fileTen = convertFilesToIntArray(fileName: "s2.10", fileExtention: ".in")
//var fileEleven = convertFilesToIntArray(fileName: "s2.11", fileExtention: ".in")

/*
 Problem Description:
 A train of railway cars attempts to cross a bridge. The length of each car is 10m but their weights might be different. The bridge is 40m long (thus can hold 4 train cars at one time). The bridge will crack if the total weight of the cars on it at one time is greater than a certain weight. The cars are numbered starting at 1, going up to N, and they cross the bridge in that order (i.e., 1 immediately followed by 2, which is immediately followed by 3, and so on). What is the largest number T of railway cars such that the train of cars 1...T (in order) can cross the bridge?

 Input Specification:
 An array with integers. The first number is the maximum weight W (1 ≤ W ≤ 100000) that the bridge can hold at any particular time. The second number is the number N (1 ≤ N ≤ 100000) which is the number of railway cars that we wish to move across the bridge. On each of the next N lines of input, there will be a positive integer wi (1 ≤ i ≤ N, 1 ≤ wi ≤ 100000) which represents the weight of the ith railway car in the sequence.
 
 Output Specification:
 Your output should be a non-negative integer representing the maximum number of railway cars that can be brought across the bridge in the order specified.
 
 Sample Input 1:
 [100, 6, 50, 30, 10, 10, 40, 50]
 
 Output for Sample Input 1:
 5
 
 */

var Sample = [100, 6, 50, 30, 10, 10, 40, 50]

func CCC(Input: inout [Int]){
    let MaxWeight = Input[0]
    let NumOfCars = Input[1]
    var totalCars = 0
    var currentCart1 = Int()
    var currentCart2 = Int()
    var currentCart3 = Int()
    var currentCart4 = Int()
    var counter = 0
    var Aremove = 2
    
    for index in 0..<Input.count{
        if counter > 1 {
             currentCart1 = Input[index + 1]
             currentCart2 = Input[index + 1]
             currentCart3 = Input[index + 1]
             currentCart4 = Input[index + 1]
            
        Aremove = index + 1
        }else{
        var currentCart1 = Input[index + 2]
        var currentCart2 = Input[index + 3]
        var currentCart3 = Input[index + 4]
        var currentCart4 = Input[index + 5]
        print(currentCart1)
        print(currentCart2)
        print(currentCart3)
        print(currentCart4)
        Aremove = index + 2
        }
        if (currentCart1+currentCart2+currentCart3+currentCart4) <= MaxWeight && totalCars <= NumOfCars{
            totalCars += 1
            print(totalCars)
            print(Input[index + 2])
            Input.remove(at: index + Aremove)
        }else if (currentCart1+currentCart2+currentCart3+currentCart4) <= MaxWeight && totalCars == NumOfCars{
            totalCars = NumOfCars
            }else if (currentCart1+currentCart2+currentCart3+currentCart4) > MaxWeight{
            currentCart1 = Input[index + 2]
            currentCart2 = Input[index + 3]
            currentCart3 = Input[index + 4]
            currentCart4 = Input[index + 5]
            break
            }
        counter += 1
    }
   print(totalCars)
}

CCC(Input: &Sample)
