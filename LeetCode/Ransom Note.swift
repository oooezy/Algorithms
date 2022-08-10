/*
Title     : 383. Ransom Note
URL       : https://leetcode.com/problems/ransom-note/
Author    : EUNJI LEE
Created   : 2022.08.10
*/

// Solution 1.
class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazine = magazine
        
        for char in ransomNote {
            if let index = magazine.firstIndex(of: char) {
                magazine.remove(at: index)
            } else {
                return false
            }
        }
        
        return true
    }
}