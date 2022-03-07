/*
Title     : 1374. Generate a String With Characters That Have Odd Counts
URL       : https://leetcode.com/problems/generate-a-string-with-characters-that-have-odd-counts/
Author    : EUNJI LEE
Created   : 2022.03.07
*/

// Solution 1.
class Solution {
    func generateTheString(_ n: Int) -> String {
        var res = Array(repeating: "a", count: n)
        
        if n % 2 == 0 {
            res[0] = "b"
        }
        
        return res.reduce("", +)
    }
}
