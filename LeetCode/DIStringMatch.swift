/*
Title     : 942. DI String Match
URL       : https://leetcode.com/problems/di-string-match/
Author    : EUNJI LEE
Created   : 2022.03.07
*/

// Solution 1.
class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        var res: [Int] = [Int](repeating: 0, count: s.count + 1)
        var min = 0
        var max = s.count
        var arr = Array(s)
        
        for i in 0..<s.count {
            if arr[i] == "I" {
                res[i] = min
                min += 1
            } else {
                res[i] = max
                max -= 1
            }
        }
        
        res[s.count] = min
        return res
    }
}