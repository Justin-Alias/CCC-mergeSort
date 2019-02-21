import UIKit

/*
 
 Problem Description:
 
 A fish-finder is a device used by anglers to find fish in a lake. If the fish-finder finds a fish, it will sound an alarm. It uses depth readings to determine whether to sound an alarm. For our purposes, the fish-finder will decide that a fish is swimming past if:
 • there are four consecutive depth readings which form a strictly increasing sequence (such as 3 4 7 9) (which we will call “Fish Rising”), or
 • there are four consecutive depth readings which form a strictly decreasing sequence (such as 9 6 5 2) (which we will call “Fish Diving”), or
 • there are four consecutive depth readings which are identical (which we will call “Constant Depth”).
 All other readings will be considered random noise or debris, which we will call “No Fish.” Your task is to read a sequence of depth readings and determine if the alarm will sound.
 
 Input Specification:
 The input will be four positive integers in an array, representing the depth readings.
 
 Output Specification:
 The output is one of four possibilities in the form of a string. If the depth readings are increasing, then the output should be "Fish Rising". If the depth readings are decreasing, then the output should be "Fish Diving". If the depth readings are identical, then the output should be Fish At "Constant Depth".Otherwise,the outputs hould be "No Fish".
 
 Sample Input 1: [30 10 20 20]
 Output for Sample Input 1: "No Fish"
 
 Sample Input 2: [1 10 12 13]
 Output for Sample Input 2: "Fish Rising"
 
 */

var arrayOne: [Int] = [2,15,17,2]
var arrayTwo: [Int] = [5,4,3,11]
var arrayThree: [Int] = [55,55,55,5]
var arrayFour: [Int] = [11,24,25,29]


func Sousa_Justin_Sounds_Fishy(arrayIn: inout [Int]) -> Any {
    for index in 0...arrayIn.count{
        if arrayIn[0] < arrayIn[1] && arrayIn[1] < arrayIn[2] && arrayIn[2] < arrayIn[3]{
            print("Fish Rising")
        }else if arrayIn[0] > arrayIn[1] && arrayIn[1] > arrayIn[2] && arrayIn[2] > arrayIn[3] {
            print("Fish Diving")
        }else if arrayIn[0] == arrayIn[1] && arrayIn[1] == arrayIn[2] && arrayIn[2] == arrayIn[3]{
            print("Constant Depth")
        }else{
            print("No fish")
        }
        break
    }
    return arrayIn
}


Sousa_Justin_Sounds_Fishy(arrayIn: &arrayOne)
Sousa_Justin_Sounds_Fishy(arrayIn: &arrayTwo)
Sousa_Justin_Sounds_Fishy(arrayIn: &arrayThree)
Sousa_Justin_Sounds_Fishy(arrayIn: &arrayFour)

