/*
Title     : 직사각형 별찍기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12969
Author    : EUNJI LEE
Created   : 2022.02.20
*/

// Solution 1.
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for _ in 1...b {
    print(String(repeating: "*", count: a))
}

// Solution 2.
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print(String(repeating: String(repeating: "*", count: a)+"\n", count: b))

// Solution 3.
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for _ in 1...b {
    for _ in 1...a {
        print("*", terminator: "")
    }
    print("")
}