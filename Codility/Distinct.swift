/*
Title     : Distinct
URL       : https://app.codility.com/demo/results/training4UENJM-DWA/
Author    : EUNJI LEE
Created   : 2022.06.21
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    return Set<Int>(A).count
}