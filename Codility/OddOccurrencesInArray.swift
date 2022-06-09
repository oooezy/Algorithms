/*
Title     : OddOccurrencesInArray
URL       : https://app.codility.com/demo/results/training24VPY9-SR2/
Author    : EUNJI LEE
Created   : 2022.06.09
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    var temp = Set<Int>()

    for i in A {
        if temp.contains(i) {
            temp.remove(i)
        } else {
            temp.insert(i)
        }
    }

    if temp.count == 1 {
        return temp.first!
    }
    
    return 0
}

// Solution 2.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    var temp = 0 

    for i in A {
        temp ^= i
    }

    return temp
}