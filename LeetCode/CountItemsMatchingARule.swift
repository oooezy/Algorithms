/*
Title     : 1773. Count Items Matching a Rule
URL       : https://leetcode.com/problems/count-items-matching-a-rule/
Author    : EUNJI LEE
Created   : 2022.02.06
*/

// Solution 1.
class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var res = 0, index = 0
        
        if ruleKey == "type" { index = 0 }
        if ruleKey == "color" { index = 1 }
        if ruleKey == "name" { index = 2 }
        
        items.forEach {
            if $0[index] == ruleValue { res += 1 }
        }
        
        return res
    }
}    