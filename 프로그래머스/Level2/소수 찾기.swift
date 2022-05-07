/*
Title     : 소수 찾기
URL       : https://programmers.co.kr/learn/courses/30/lessons/42888
Author    : EUNJI LEE
Created   : 2022.05.07
*/

// Solution 1.
import Foundation

var result: Set<Int> = []

func solution(_ numbers:String) -> Int {
    let arr = Array(numbers)
    
    for i in 1...arr.count {
        permutation(cnt: 0, list: arr, value: "", totalCnt: i)
    }

    return result.count
}


// 순열
func permutation(cnt: Int, list: [String.Element], value: String, totalCnt: Int){
    if cnt == totalCnt { 
        primeNum(value)
        return
    } else {
        for i in 0..<list.count {
           var removedArray = list
            let k = removedArray.remove(at: i)
            permutation(cnt: cnt + 1, list: removedArray, value: "\(value)\(k)" ,totalCnt: totalCnt)
        }
    }
}
// 소수 판별
func primeNum(_ value: String) {
    let num = Int(value)!
    var cnt = 0
    
    if num > 1 {
        for i in 2...num {
            if cnt > 1{
                break
            }
            if num % i == 0 {
                cnt += 1
            }
        }
        
        if cnt == 1 {
            result.insert(num)
        }
    }
}