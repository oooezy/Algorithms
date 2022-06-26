/*
Title     : MaxCounters
URL       : https://app.codility.com/demo/results/trainingYFQQ2P-94Q/
Author    : EUNJI LEE
Created   : 2022.06.26
*/

// Solution 1.
import Foundation
import Glibc

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var result = Array(repeating: 0, count: N)
    var maxValue = 0
    var lastCommonMaxValue = 0
    
    A.forEach { item in
        if item == N + 1 {
            lastCommonMaxValue = maxValue
        }
        else {
            var value = result[item - 1]
            if value < lastCommonMaxValue {
                value = lastCommonMaxValue
            }
            
            let counterValueIncremented = value + 1
            result[item - 1] = counterValueIncremented
            if counterValueIncremented > maxValue {
                maxValue = counterValueIncremented
            }
        }
    }
    
    return result.map { $0 > lastCommonMaxValue ? $0 : lastCommonMaxValue }  
}
