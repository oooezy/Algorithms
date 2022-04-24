/*
Title     : 위장
URL       : https://programmers.co.kr/learn/courses/30/lessons/42578
Author    : EUNJI LEE
Created   : 2022.04.24
*/

// Solution 1.
import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic: [String : Int] = [:]
    
    clothes.forEach { cloth in
        let key = cloth[1]
        let count: Int = dic[key] ?? 1
        dic[key] = count + 1                    
    }
    
    return dic.reduce(1) {$0 * $1.value} - 1
}