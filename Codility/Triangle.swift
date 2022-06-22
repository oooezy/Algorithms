/*
Title     : Triangle
URL       : https://app.codility.com/demo/results/trainingKQY77V-MQ7/
Author    : EUNJI LEE
Created   : 2022.06.22
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    guard A.count >= 3 else { return 0 }

    let sortedArr = A.sorted()
    var isTriangle = false
    
    for i in 0..<sortedArr.count - 2 {
        if Int64(sortedArr[i] + sortedArr[i + 1]) > sortedArr[i + 2] {
            isTriangle = true
            break
        }
    }

    return isTriangle ? 1 : 0
}