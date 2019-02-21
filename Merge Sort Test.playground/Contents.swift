import UIKit

////////////////////////////////// Sort the the following array if integers, using merge sort, from largest to smallest ///////////////////////////////////////

// Crating an array of random numbers
var unSortedBigArray: [Int] = [50, 15, 52, 35, 92, 72, 79, 73, 84, 95, 45, 60, 16, 81, 25, 14, 29, 68, 41, 5, 10, 53, 100, 63, 59, 43, 64, 32, 65, 56, 11, 67, 7, 46, 66, 82, 42, 27, 22, 17, 1, 70, 28, 78, 40, 85, 24, 31, 98, 88, 37, 39, 86, 75, 62, 49, 51, 36, 91, 74, 96, 9, 3, 90, 94, 57, 89, 23, 69, 76, 80, 48, 97, 19, 33, 61, 58, 44, 21, 4, 87, 13, 8, 71, 93, 20, 47, 77, 18, 54, 26, 38, 83, 6, 12, 34, 30, 55]
// Creating a function that will take in an array of intergers and at the end of the function it will return an array of interegers
func splittingSection(unSortedArray: [Int]) -> [Int]{
    // Creating a guard statement that wil check if the array has a "count" greater than 1, and if it is return that array
    guard unSortedArray.count > 1 else{
        return unSortedArray
    }
    // Creating a constant that will be an interger that is equal to the count of the array that is take in divided by 2. An example if the array taken in has a count of 10 this contant will be equal to 5
    let middleIndex = unSortedArray.count/2
    // Creating a constant that will an array that is equal to the array that is taken in - unSortedArray - but it only will be from the 1st element to middleIndex - the middle
    let leftArray = Array(unSortedArray[0..<middleIndex])
    // Creating a constant that will an array that is equal to the array that is taken in - unSortedArray - but it will be from the middleIndex - the middle number - to the very last element - number
    let rightArray = Array(unSortedArray[middleIndex..<unSortedArray.count])
    // At the end of this function if the guard statement is not true then this code will execute. This code is returning another function called mergeSection. for the lefty parameter it will be calling up the splittingSection function and within the fuction for the unSortedArray parameter it will take in leftArray. For the other parameter of the mergeSection function, righty it will be taking in the function splittingSection and within splittingSection the parameter unSortedArray will be taking in rightArray
    return mergeSection(lefty: splittingSection(unSortedArray: leftArray), righty: splittingSection(unSortedArray: rightArray))
}

func mergeSection(lefty: [Int], righty: [Int]) -> [Int]{
    var fullySortedArray:[Int] = []
    var leftSide = lefty
    var rightSide = righty
    
    while leftSide.count > 0 && rightSide.count > 0{
        if leftSide.first! > rightSide.first!{
            fullySortedArray.append(leftSide.removeFirst())
        }else{
            fullySortedArray.append(rightSide.removeFirst())
        }
    }
    return fullySortedArray + leftSide + rightSide
}
print(splittingSection(unSortedArray: unSortedBigArray))
