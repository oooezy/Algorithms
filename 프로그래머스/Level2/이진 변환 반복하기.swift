/*
Title     : 이진 변환 반복하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/70129
Author    : EUNJI LEE
Created   : 2022.04.25
*/

// Solution 1.
import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var count: Int = 0 
    var zeroCount:Int = 0
    
    while s != "1" {
        let len = s.filter { char in
            if char == "0" {
                zeroCount += 1
            }
            return char != "0"
         }.count
        
        s = String(len, radix: 2)
        count += 1
    }

    return [count, zeroCount]
}
