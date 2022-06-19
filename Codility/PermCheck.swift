/*
Title     : PermCheck
URL       : https://app.codility.com/demo/results/trainingE3CFP7-HB7/
Author    : EUNJI LEE
Created   : 2022.06.19
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    let setA = Set(A)
    
    return (setA.count == A.max() && setA.count == A.count) ? 1 : 0
}