/*
Title     : 1941. Check if All Characters Have Equal Number of Occurrences
URL       : https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/
Author    : EUNJI LEE
Created   : 2022.03.07
*/

// Solution 1.
class Solution {
     func areOccurrencesEqual(_ s: String) -> Bool {
        var dict = [Character:Int]()
        var charArray = Array(s)
         
        for char in charArray {
            dict[char, default: 0] += 1
        }
        
        return dict.values.min() == dict.values.max()
    }
}