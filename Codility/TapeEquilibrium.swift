/*
Title     : TapeEquilibrium
URL       : https://app.codility.com/demo/results/trainingZZ3R4G-JAF/
Author    : EUNJI LEE
Created   : 2022.06.16
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {

    let totalSum = A.reduce(0, +)
    
    var left = 0
    var right = totalSum
    var minDiff = Int.max

    for i in 0..<A.count - 1 {
        let x = A[i]

        left += x
        right -= x

        let diff = abs(left - right)
        minDiff = min(diff, minDiff)
    }

    return minDiff
}