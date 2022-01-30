/*
Title     : 2011. Final Value of Variable After Performing Operations
URL       : https://leetcode.com/problems/final-value-of-variable-after-performing-operations/
Author    : EUNJI LEE
Created   : 2022.01.30
*/

// Solution 1.
class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        
        var res = 0
        
        for i in operations {
            if i == "--X" || i == "X--" {
                res -= 1
            } else {
                res += 1
            }
        }
        
        return res
    }
}