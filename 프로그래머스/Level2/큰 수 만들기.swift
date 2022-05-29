/*
Title     : 큰 수 만들기
URL       : https://programmers.co.kr/learn/courses/30/lessons/42883
Author    : EUNJI LEE
Created   : 2022.05.29
*/

// Solution 1.
func solution(_ number:String, _ k:Int) -> String {
    let nCount = number.count
    let arr = Array(number)
    var answer: [Character] = []
    var K = k
    
    for index in arr.indices {
        while K > 0 && !answer.isEmpty && answer.last! < arr[index] {
            answer.removeLast()
            K -= 1
        }
        
        if K == 0 {
            answer.append(contentsOf: Array(arr[index...]))
            break
        } else {
            answer.append(arr[index])
        }
    }
    
    return String(answer[0..<nCount - k])
}