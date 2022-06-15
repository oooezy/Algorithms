/*
Title     : PermMissingElem
URL       : https://app.codility.com/demo/results/trainingG2MUXY-H4T/
Author    : EUNJI LEE
Created   : 2022.06.16
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    let sortedA = A.sorted()
    
    for (index, value) in sortedA.enumerated() {
        if index+1 != value {
            return index+1
        }
    }
    return A.count+1
}