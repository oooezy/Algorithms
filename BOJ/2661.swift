/*
Title     : 2661. 좋은 수열
URL       : https://www.acmicpc.net/problem/2661
Author    : EUNJI LEE
Created   : 2022.09.14
*/

// Solution 1.
import Foundation

let n = Int(readLine()!)!
var result = ""

func dfs() {
    if result.count == n {
        print(result)
        exit(0)
    }
    (1...3).forEach {
        if isGood($0) {
            result += "\($0)"
            dfs()
            result.removeLast()
        }
    }
}

func isGood(_ num: Int) -> Bool {
    if result.count == 0 { return true }
    
    let res = result + "\(num)"
    for i in 1...res.count / 2 {
        let r = res[res.index(res.endIndex, offsetBy: -i)...]
        let l = res[res.index(res.endIndex, offsetBy: -(i * 2))..<res.index(res.endIndex, offsetBy: -i)]
        if r == l { return false }
    }
    return true
}

dfs()