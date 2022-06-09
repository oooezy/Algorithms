/*
Title     : CyclicRotation
URL       : https://app.codility.com/demo/results/trainingCAJQ8H-GQY/
Author    : EUNJI LEE
Created   : 2022.06.09
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    var arr = A
    var count = 0

    if arr.isEmpty { return arr }

    while count != K {
        let temp = arr.last!
        arr.removeLast()
        arr.insert(temp, at: 0)
        count += 1
    }

    return arr
}