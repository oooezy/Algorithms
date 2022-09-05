/*
Title     : 10972. 다음 순열
URL       : https://www.acmicpc.net/problem/10972
Author    : EUNJI LEE
Created   : 2022.09.05
*/

// Solution 1.
let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }

if Array(1...n).reversed() == arr {
    print("-1")
} else {
    var idx = 0
    for i in 0..<n {
        if i + 1 < n, arr[i] < arr[i + 1] {
            idx = i
        }
    }
    
    var nextIdx = 0
    for j in idx..<n {
        if arr[idx] < arr[j] {
            nextIdx = j
        }
    }
    
    arr.swapAt(idx, nextIdx)
    arr = arr[...idx] + arr[(idx + 1)...].sorted()
    print(arr.map { String($0) }.joined(separator: " "))
}