/*
Title     : FrogRiverOne
URL       : https://app.codility.com/demo/results/trainingMWKF52-NVC/
Author    : EUNJI LEE
Created   : 2022.06.19
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var existance = Set<Int>()

    for i in 1...X {
        existance.insert(i)
    }
 
    for (index, value) in A.enumerated() {
        existance.remove(value)
 
        if existance.isEmpty {
            return index
        }
    }
 
    return -1
}