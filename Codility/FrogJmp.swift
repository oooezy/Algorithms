/*
Title     : FrogJmp
URL       : https://app.codility.com/demo/results/trainingG2MUXY-H4T/
Author    : EUNJI LEE
Created   : 2022.06.16
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let count = (Y - X) % D
    return (Y - X) / D + (count > 0 ? 1 : 0)
}