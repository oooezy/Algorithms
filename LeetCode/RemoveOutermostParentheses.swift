/*
Title     : 1021. Remove Outermost Parentheses
URL       : https://leetcode.com/problems/remove-outermost-parentheses/
Author    : EUNJI LEE
Created   : 2022.02.15
*/

// Solution 1.
class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var res = ""
        var count = 0
        
        for i in S {
            if i == "(" {
                if count > 0 { res.append(i) }
                count += 1
            } else if i == ")" {
                count -= 1
                if count > 0 { res.append(i) }
            }
        }
        return res
    }
}
