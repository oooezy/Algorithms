/*
Title     : 1662. Check If Two String Arrays are Equivalent
URL       : https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
Author    : EUNJI LEE
Created   : 2022.02.08
*/

// Solution 1.
class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        return word1.reduce("", +) == word2.reduce("", +)
    }
}
