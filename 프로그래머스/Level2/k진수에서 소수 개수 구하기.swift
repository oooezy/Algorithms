/*
Title     : k진수에서 소수 개수 구하기
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/92335
Author    : EUNJI LEE
Created   : 2022.09.20
*/

// Solution 1.
import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let s = String(n, radix: k)
    return s.split(separator: "0").filter { p in 
        !p.isEmpty && p != "1" && isPrime(Int(p)!) && (s.contains("0\(p)0") || s.contains("\(p)0") || s.contains("0\(p)") || s.contains(p)) }.count
                                          
    }
    
    
func isPrime(_ num: Int) -> Bool {
    var i = 2
    
    while i <= Int(sqrt(Double(num))) {
        guard num % i != 0 else { return false }
        i += 1
    }
    
    return true
}
