/*
Title     : 10819. 차이를 최대로
URL       : https://www.acmicpc.net/problem/10819
Author    : EUNJI LEE
Created   : 2022.09.05
*/

// Solution 1.
import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var maxValue = 0
var sum = 1

func factorial(_ num: Int) {
    if num == 1 {
        return
    }
    
    sum *= num
    factorial(num - 1)
}

factorial(n)

func absSum(_ arr: [Int]) -> Int {
    var sum = 0
    for i in 0..<arr.count - 1 {
        sum += abs(arr[i] - arr[i + 1])
    }
    return sum
}

for _ in 0..<sum {
    maxValue = max(maxValue, absSum(arr))
    
    var idx = 0
    for i in 0..<n {
        if i + 1 < n, arr[i] < arr[i + 1] {
            idx = i
        }
    }
    
    var nextIdx = 0
    for j in idx..<n {
        if arr[idx] < arr[j] {
            nextIdx  = j
        }
    }
    
    arr.swapAt(idx, nextIdx)
    arr = arr[...idx] + arr[(idx + 1)...].sorted()
}

print(maxValue)