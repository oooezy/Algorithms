/*
Title     : 242. Valid Anagram
URL       : https://leetcode.com/problems/valid-anagram/
Author    : EUNJI LEE
Created   : 2022.07.19
*/

// Solution 1.
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        let s = Array(s)
        let t = Array(t)
        
        var map = [Character:Int]()
        for i in 0..<s.count {
            map[s[i]] = (map[s[i]] ?? 0) + 1
            map[t[i]] = (map[t[i]] ?? 0) - 1
        }
        
        for (_, v) in map {
            guard v == 0 else { return false }
        }
        return true
    }
}