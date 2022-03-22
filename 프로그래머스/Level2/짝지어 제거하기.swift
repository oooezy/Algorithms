/*
Title     : 짝지어 제거하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12973
Author    : EUNJI LEE
Created   : 2022.03.022
*/

// Solution 1.
import Foundation

func solution(_ s:String) -> Int{
    var ans = [Character]()
    var arr = Array(s)
    
    for i in 0..<arr.count {
        if !ans.isEmpty && ans.last == arr[i] {
            ans.removeLast()
        } else {
            ans.append(arr[i])
        }
    }
    return ans.isEmpty ? 1 : 0
}