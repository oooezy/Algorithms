/*
Title     : 1614. Maximum Nesting Depth of the Parentheses
URL       : https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/
Author    : EUNJI LEE
Created   : 2022.02.12
*/

// Solution 1.
class Solution {
    func maxDepth(_ s: String) -> Int {
        var res = 0, depth = 0
        
        for char in s {
            switch char {
                case "(" :
                    depth += 1
                    res = max(res, depth)
                case ")" :
                    depth -= 1
                default:
                    break
            }
        }
        
        return res
    }
}