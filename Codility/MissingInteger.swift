/*
Title     : MissingInteger
URL       : https://app.codility.com/demo/results/trainingWXPQ9B-XSQ/
Author    : EUNJI LEE
Created   : 2022.06.20
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    var arr = Set<Int>()

    for i in A {
        if i > 0 {
            arr.insert(i)
        }
    }

    if arr.isEmpty { return 1 }

    for (index, _) in A.enumerated() {
        if arr.contains(index + 1) == false {
            return index + 1
        }
    }

    return A.count + 1
}