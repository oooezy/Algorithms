/*
Title     : CountDiv
URL       : https://app.codility.com/demo/results/trainingWVAX47-2Z4/
Author    : EUNJI LEE
Created   : 2022.06.22
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {

    let min: Int = Int(floor(Double(A - 1) / Double(K)))
    let max: Int = Int(floor(Double(B) / Double(K)))

    return max - min
}