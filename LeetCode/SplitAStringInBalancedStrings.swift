/*
Title     : 1221. Split a String in Balanced Strings
URL       : https://leetcode.com/problems/split-a-string-in-balanced-strings/
Author    : EUNJI LEE
Created   : 2022.02.10
*/

// Solution 1.
class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var balance = 0, count = 0
        
        for i in s {
            if i == "R" {
                balance += 1
            } else {
                balance -= 1
            }
            
            if balance == 0 {
                count += 1
            }
        }
        
        return count
    }
}
