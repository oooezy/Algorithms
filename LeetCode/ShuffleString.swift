/*
Title     : 1528. Shuffle String
URL       : https://leetcode.com/problems/shuffle-string/
Author    : EUNJI LEE
Created   : 2022.02.03
*/

// Solution 1.
class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var res = [Character](repeating: " ", count: s.count)
        var index = 0
        
        for char in s {
            res[indices[index]] = char
            index += 1
        }
        
        return String(res)
        
    }
}