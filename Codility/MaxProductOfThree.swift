/*
Title     : MaxProductOfThree
URL       : https://app.codility.com/demo/results/trainingHF3NZJ-PKD/
Author    : EUNJI LEE
Created   : 2022.06.27
*/

// Solution 1.
import Foundation
import Glibc


public func solution(_ A : inout [Int]) -> Int {
    let sortedArr = A.sorted()
    let len = A.count - 1

    let backMultiply = sortedArr[len - 2] * sortedArr[len - 1] * sortedArr[len]

    var frontMultiply = sortedArr[0] * sortedArr[1]
    if frontMultiply < 0 {
        return backMultiply
    } else {
        frontMultiply *= sortedArr[len]
        return max(frontMultiply, backMultiply)
    }
}