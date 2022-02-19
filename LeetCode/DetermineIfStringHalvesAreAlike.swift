/*
Title     : 1704. Determine if String Halves Are Alike
URL       : https://leetcode.com/problems/determine-if-string-halves-are-alike/
Author    : EUNJI LEE
Created   : 2022.02.17
*/

// Solution 1.
class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let s = Array(s.lowercased())
        let half = s.count / 2
        let vowels = [Character](["a", "e", "i", "o", "u"])
        
        var a = 0, b = 0
        
        for i in 0..<half {
            a += vowels.contains(s[i]) ? 1 : 0
            b += vowels.contains(s[i + half]) ? 1 : 0
        }
        
        return a == b
    }
}