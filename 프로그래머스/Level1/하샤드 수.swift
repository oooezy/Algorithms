/*
Title     : 하샤드 수
URL       : https://programmers.co.kr/learn/courses/30/lessons/12947
Author    : EUNJI LEE
Created   : 2022.02.19
*/

// Solution 1.
func solution(_ x:Int) -> Bool {
    var num = x
    var sum: Int = 0
    
    while num > 0 {
        sum += num % 10
        num = num / 10 
    }
    
    return x % sum == 0
}

// Solution 2.
func solution(_ x:Int) -> Bool {
    var sum = String(x)
        .map{ Int(String($0))! }
        .reduce(0, +)

    return x % sum == 0
}