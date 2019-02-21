import UIKit
let date_start = NSDate()
var array = [10, 8 , 4, 6, 2, 7, 11, 5 , 3, 4]

func splittingSection(unSortedArray: [Int]) -> [Int]{
    guard unSortedArray.count > 1 else{
        return unSortedArray
    }
    let middleIndex = unSortedArray.count/2
    let leftArray = Array(unSortedArray[0..<middleIndex])
    let rightArray = Array(unSortedArray[middleIndex..<unSortedArray.count])
    return mergeSection(left: splittingSection(unSortedArray: leftArray), right: splittingSection(unSortedArray: rightArray))
}
func mergeSection(left:[Int], right: [Int]) -> [Int]{
    var fullySortedArray:[Int] = []
    var leftSide = left
    var rightSide = right
    while leftSide.count > 0 && rightSide.count > 0{
        if leftSide.first! < rightSide.first!{
        fullySortedArray.append(leftSide.removeFirst())
        }else{
        fullySortedArray.append(rightSide.removeFirst())
        }
    }
    return fullySortedArray + leftSide + rightSide
}
print(splittingSection(unSortedArray: array))
print(-date_start.timeIntervalSinceNow)

