/*
Title     : 10974. 모든 순열
URL       : https://www.acmicpc.net/problem/10974
Author    : EUNJI LEE
Created   : 2022.09.05
*/

// Solution 1.
let n = Int(readLine()!)!
var sum = 1
var arr: [Int] = []

factorial(n)

for i in 0..<n {
    arr.append(i + 1)
}

for _ in 0..<sum {
    print(arr.map{ String($0) }.joined(separator: " "))
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
    arr = arr[...idx] + arr[(idx + 1)..<n].sorted()
}

func factorial(_ num: Int) {
    if num == 1 {
        return
    }
    
    sum *= num
    factorial(num - 1)
}
