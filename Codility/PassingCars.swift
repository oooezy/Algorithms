/*
Title     : PassingCars
URL       : https://app.codility.com/demo/results/trainingVB23QS-QNE/
Author    : EUNJI LEE
Created   : 2022.06.26
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    var pCount = 0
    var answer = 0

    for i in 0..<A.count {
        if A[i] == 0 {
            pCount += 1
        } else {
            answer += pCount 
        }
    }
    return answer > 1000000000 ? -1 : answer
}