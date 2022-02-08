/*
Title     : 1678. Goal Parser Interpretation
URL       : https://leetcode.com/problems/goal-parser-interpretation/
Author    : EUNJI LEE
Created   : 2022.02.09
*/

// Solution 1.
class Solution {
    func interpret(_ command: String) -> String {
        let st = Array(command)
        var res = "", i = 0
        
        while (i < st.count) {
            if st[i] == "G" {
                res += "G"
                i += 1
            } else {
                if st[i + 1] == ")" {
                    res += "o"
                    i += 2
                } else {
                    res += "al"
                    i += 4
                }
            }
        }
        return res
    }
}
