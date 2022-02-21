/*
Title     : 콜라츠 추측
URL       : https://programmers.co.kr/learn/courses/30/lessons/12943
Author    : EUNJI LEE
Created   : 2022.02.21
*/

// Solution 1.
func solution(_ num:Int) -> Int {
    var n = num 
    var count: Int = 0
    
    while n != 1 {
        if n % 2 == 0 {
            n = n / 2
            count += 1
        } else {
            n = (n * 3) + 1
            count += 1
        }
    }
    
    return count > 500 ? -1 : count
}

