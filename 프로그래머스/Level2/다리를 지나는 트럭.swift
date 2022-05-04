/*
Title     : 다리를 지나는 트럭
URL       : https://programmers.co.kr/learn/courses/30/lessons/42583
Author    : EUNJI LEE
Created   : 2022.05.04
*/

// Solution 1.
import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var bridge = Array(repeating: 0, count: bridge_length)
    var trucks = truck_weights
    var sec = 0
    var bridgeWeight = 0
    
    while !bridge.isEmpty {
        sec += 1
        bridgeWeight -= bridge.removeFirst()
        
        if let t = trucks.first {
            if t + bridgeWeight <= weight {
                bridgeWeight += trucks.removeFirst()
                bridge.append(t)
            } else {
                bridge.append(0)
            }
        }
    }
    
    return sec
}