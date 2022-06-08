/*
Title     : BinaryGap
URL       : https://app.codility.com/demo/results/training9TWNTS-95X/
Author    : EUNJI LEE
Created   : 2022.06.08
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ N : Int) -> Int {
    let binary = String(N, radix: 2)

    var temp = ""
    var numberOne = false
    var zeroCount = [String]()

    for i in binary {
        if i == "1" {
            numberOne = true
        } else {
            numberOne = false
            temp.append(i)
        }

        if numberOne {
            zeroCount.append(temp)
            temp = ""
        }
    }

    return zeroCount.map { $0.count }.max()!
}