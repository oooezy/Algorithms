/*
Title     : MinAvgTwoSlice
URL       : https://app.codility.com/demo/results/training3YPNGY-Q2P/
Author    : EUNJI LEE
Created   : 2022.06.27
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    var minAvg = Double(A[0] + A[1]) / 2.0
    var minIdx = 0

    for i in 2..<A.count {
        let threeAvg = Double(A[i - 2] + A[i - 1] + A[i]) / 3.0

        if minAvg > threeAvg {
            minAvg = threeAvg
            minIdx = i - 2
        }

        let twoAvg = Double(A[i - 1] + A[i]) / 2.0

        if minAvg > twoAvg {
            minAvg = twoAvg
            minIdx = i - 1
        }
    }

    return minIdx
}