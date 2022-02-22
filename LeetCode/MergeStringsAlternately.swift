/*
Title     : 1768. Merge Strings Alternately
URL       : https://leetcode.com/problems/merge-strings-alternately/
Author    : EUNJI LEE
Created   : 2022.02.19
*/

// Solution 1.
class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let w1 = Array(word1), w2 = Array(word2)
        let w1Length = word1.count, w2Length = word2.count 
        var res: String = ""
        
        let len = max(w1Length, w2Length)
        
        for i in 0..<len {
            if i < w1Length {
                res += "\(w1[i])"
            } 
            if i < w2Length {
                res += "\(w2[i])"
            }
        }
        
        return res
    }
}