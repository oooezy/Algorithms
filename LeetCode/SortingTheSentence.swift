/*
Title     : 1859. Sorting the Sentence
URL       : https://leetcode.com/problems/sorting-the-sentence/
Author    : EUNJI LEE
Created   : 2022.02.11
*/

// Solution 1.
class Solution {
    func sortSentence(_ s: String) -> String {
        
        return s.split(separator: " ").sorted(by: { $0.last! < $1.last! }).map({ $0.dropLast()}).joined(separator: " ")
    }
}