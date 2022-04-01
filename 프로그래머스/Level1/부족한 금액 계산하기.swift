/*
Title     : 부족한 금액 계산하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/82612
Author    : EUNJI LEE
Created   : 2022.04.01
*/

// Solution 1.
import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalPrice: Int = 0
    
    for i in 1...count {
        totalPrice += price * i 
    }
    
    let result = totalPrice - money
    return result <= 0 ? 0 : Int64(result)
}